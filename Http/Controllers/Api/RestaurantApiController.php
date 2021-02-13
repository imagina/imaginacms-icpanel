<?php

namespace Modules\Icpanel\Http\Controllers\Api;

use Modules\Iprofile\Http\Controllers\Api\UserApiController;
use Modules\Ihelpers\Http\Controllers\Api\BaseApiController;
use Modules\Icpanel\Http\Controllers\Api\DomainApiController;
use Modules\Icpanel\Http\Controllers\Api\SubDomainApiController;
use Modules\Icpanel\Http\Controllers\Api\UserDBApiController;
use Modules\Icpanel\Http\Controllers\Api\DBApiController;
use Modules\Icpanel\Http\Controllers\Api\PrivilegesDBApiController;
use Modules\Icpanel\Http\Controllers\Api\FileApiController;
use Modules\Icpanel\Http\Requests\CreateRestaurantRequest;
use Mockery\CountValidator\Exception;
use Illuminate\Http\Request;
use Route;
use Log;

class RestaurantApiController extends BaseApiController
{
  private $response;
  private $userController;
  private $userName;
  private $userPassword;
  private $ipHost;
  private $host;
  private $cpDomain;
  private $cpSubDomain;
  private $cpUserDb;
  private $cpDB;
  private $cpPrivilegesDB;
  private $cpFile;

  public function __construct(
    UserApiController $userController,
    DomainApiController $cpDomain,
    SubDomainApiController $cpSubDomain,
    UserDBApiController $cpUserDb,
    DBApiController $cpDB,
    PrivilegesDBApiController $cpPrivilegesDB,
    FileApiController $cpFile
  )
  {
    parent::__construct();
    $this->response = [];
    $this->userController = $userController;
    $this->userName = config('asgard.icpanel.config.userName');
    $this->userPassword = config('asgard.icpanel.config.userPassword');
    $this->host = config('asgard.icpanel.config.host');
    $this->ipHost = config('asgard.icpanel.config.ipHost');
    $this->cpDomain = $cpDomain;
    $this->cpSubDomain = $cpSubDomain;
    $this->cpUserDb = $cpUserDb;
    $this->cpDB = $cpDB;
    $this->cpPrivilegesDB = $cpPrivilegesDB;
    $this->cpFile = $cpFile;
  }

  /**
   * CREATE A ITEM
   *
   * @param Request $request
   * @return mixed
   */
  public function create(Request $request)
  {
    \DB::beginTransaction();
    try {
      $data = (object)$request->input('attributes') ?? [];//Get data

      //Validate Request
      $this->validateRequestApi(new CreateRestaurantRequest((array)$data));

      $this->createData($data);//Create data response
      $this->creationCpanel();//Creation in CPanel
      $this->migrateDB($data);//Migrate DB
      $this->addConnectionDB();//Add connection to config Database
      $this->createPublicFolder();//Create public folder

      return ['data' => $this->response];
      \DB::commit(); //Commit to Data Base
    } catch (\Exception $e) {
      \DB::rollback();//Rollback to Data Base
      $status = $this->getStatusError($e->getCode());
      $response = ["errors" => $e->getMessage()];
    }
    //Return response
    return response()->json($response ?? ["data" => "Request successful"], $status ?? 200);
  }

  //Define data to response
  private function createData($data)
  {
    $url = parse_url($data->domain);//Get URL
    $domain = str_replace(['www.'], '', ($url['host'] ?? $url['path']));//Get domain

    $this->response['domain'] = $domain; //Get domain
    $this->response['backendDomain'] = "backend.{$this->response['domain']}"; //Get domain
    $this->response['domainName'] = explode('.', $domain)[0]; //Get domain name
    //Define name to DB and User DB
    $nameAccordingToDomain = substr("{$this->userName}_{$this->response['domainName']}", 0, 16);
    $this->response['DBName'] = $nameAccordingToDomain;//Define DB name
    $this->response['DBUserName'] = $nameAccordingToDomain;//Define DB User name
    $this->response['DBUserPassword'] = $this->generatePassword();// Define DB user password
    $this->response['user'] = "admin@{$this->response['domainName']}.com";//Define admin User
    $this->response['userPassword'] = $this->generatePassword();// Define DB user password
  }

  //Create Domain, Sub-Domain, DB, User DB and assign privileges to DB in cpanel
  private function creationCpanel()
  {
    //Create Domain
    $responseDomain = $this->validateResponseApi($this->cpDomain->create(
      new Request([
        'attributes' => [
          'dir' => '/public_html',
          'newdomain' => $this->response['domain'],
          'subdomain' => $this->response['domainName'],
        ]
      ])
    ));

    \Log::info('[created: Domain]::' . json_encode($responseDomain));

    //Create Sub Domain
    $responseSubDomain = $this->validateResponseApi($this->cpSubDomain->create(
      new Request([
        'attributes' => [
          'dir' => '/backend',
          'domain' => 'backend',
          'rootdomain' => $this->response['domain'],
        ]
      ])
    ));

    \Log::info('[created: Sub Domain]::' . json_encode($responseSubDomain));

    //Create User DB
    $responseUserDb = $this->validateResponseApi($this->cpUserDb->create(
      new Request([
        'attributes' => [
          'name' => $this->response['DBUserName'],
          'password' => $this->response['DBUserPassword']
        ]
      ])
    ));

    \Log::info('[created: User DB]::' . json_encode($responseUserDb));

    //Create DB
    $responseDb = $this->validateResponseApi($this->cpDB->create(
      new Request([
        'attributes' => [
          'name' => $this->response['DBName'],
        ]
      ])
    ));

    \Log::info('[created: DB]::' . json_encode($responseDb));

    //Set privileges DB
    $responseSetUser = $this->validateResponseApi($this->cpPrivilegesDB->create(
      new Request([
        'attributes' => [
          'user' => $this->response['DBUserName'],
          'database' => $this->response['DBName'],
          'privileges' => 'ALL PRIVILEGES',
        ]
      ])
    ));

    \Log::info('[created: Set user]::' . json_encode($responseSetUser));
  }

  //Migrate DB
  private function migrateDB($data)
  {
    $type = 'store';
    //Get type
    if (isset($data->type))
      if (($data->type == 'store') || ($data->type == 'services'))
        $type = $data->type;

    $baseDbUrl = base_path() . "/Modules/Icpanel/Database/base_db_" . $type . ".sql";//Path Base DB
    $baseDbSql = file_get_contents($baseDbUrl);//Get conten sql base db

    //Update conecction to migrate DB
    config()->set('database.connections.mysql.host', $this->ipHost);
    config()->set('database.connections.mysql.database', $this->response['DBName']);
    config()->set('database.connections.mysql.username', $this->userName);
    config()->set('database.connections.mysql.password', $this->userPassword);
    \DB::purge('mysql');//Purge connection

    //Migrate Base Database
    \DB::unprepared($baseDbSql);

    \Log::info('[Migrated DB]');

    //Create admin user
    $this->validateResponseApi($this->userController->create(new Request([
      'attributes' => [
        'activated' => true,
        'first_name' => 'admin',
        'last_name' => $this->response['domainName'],
        'email' => $this->response['user'],
        'password' => $this->response['userPassword'],
        'password_confirmation' => $this->response['userPassword'],
        'roles' => [1],
        'departments' => [1]
      ]
    ])));

    \Log::info('[created: User DB]');
  }

  //Add data to config database
  private function addConnectionDB()
  {
    //Get file
    $file = $this->validateResponseApi($this->cpFile->show(
      new Request([
        'params' => [
          'dir' => "/home/{$this->userName}/acms/config",
          'file' => 'database.php'
        ]
      ])
    ));

    //Replace content
    $file->data->content = str_replace(
      "//<string to replace by new connection>",
      "'{$this->response['domainName']}' => [
        'driver' => 'mysql',
        'host' => env('DB_HOST', '127.0.0.1'),
        'port' => env('DB_PORT', '3306'),
        'database' => '{$this->response['DBName']}',
        'username' => '{$this->response['DBUserName']}',
        'password' => '{$this->response['DBUserPassword']}',
        'unix_socket' => env('DB_SOCKET', ''),
        'charset' => 'utf8mb4',
        'collation' => 'utf8mb4_unicode_ci',
        'prefix' => '',
        'strict' => false,
        'engine' => null,
      ],
      //<string to replace by new connection>",
      $file->data->content
    );

    //Update file
    $result = $this->validateResponseApi($this->cpFile->update(
      new Request([
        'params' => [
          'dir' => "/home/{$this->userName}/acms/config",
          'file' => 'database.php',
          'content' => $file->data->content,
        ]
      ])
    ));

    \Log::info('[Added database conecction]::' . json_encode($result));
  }

  //Add folder in public HTML
  private function createPublicFolder()
  {
    //Copy Base assets
    $response = $this->validateResponseApi($this->cpFile->option(
      new Request([
        'params' => [
          'op' => 'copy',
          'sourcefiles' => "/home/{$this->userName}/backend/baseAssets",
          'destfiles' => "/home/{$this->userName}/backend/{$this->response['domainName']}",
        ]
      ])
    ));

    \Log::info('[created: public File]' . json_encode($response));
  }
}
