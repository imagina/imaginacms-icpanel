<?php

namespace Modules\Icpanel\Http\Controllers\Api;

use Modules\Ihelpers\Http\Controllers\Api\BaseApiController;
use Modules\Icpanel\Http\Requests\CreateFileRequest;
use Modules\Icpanel\Http\Requests\ListFileRequest;
use Modules\Icpanel\Http\Requests\UpdateFileRequest;
use Modules\Icpanel\Http\Requests\OptionFileRequest;
use Modules\Icpanel\Http\Controllers\Api\CPanel;
use Mockery\CountValidator\Exception;
use Illuminate\Http\Request;
use Route;
use Log;

class FileApiController extends BaseApiController
{
  private $cpanel;

  public function __construct(CPanel $cpanel)
  {
    parent::__construct();
    $this->cpanel = $cpanel;
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
      $this->validateRequestApi(new CreateFileRequest((array)$data));

      // Create domain
      $result = $this->cpanel->execute('api2', 'Fileman', 'mkdir', [
        "path" => $data->path,
        "name" => $data->name,
        "permissions" => $data->permissions,
      ]);

      //Response
      $response = ["data" => $result];
      \DB::commit(); //Commit to Data Base
    } catch (\Exception $e) {
      \DB::rollback();//Rollback to Data Base
      $status = $this->getStatusError($e->getCode());
      $response = ["errors" => $e->getMessage()];
    }
    //Return response
    return response()->json($response ?? ["data" => "Request successful"], $status ?? 200);
  }

  /**
   * CREATE A ITEM
   *
   * @param Request $request
   * @return mixed
   */
  public function show(Request $request)
  {
    \DB::beginTransaction();
    try {
      $params = (object)$request->input('params') ?? [];//Get data

      //Validate Request
      $this->validateRequestApi(new ListFileRequest((array)$params));

      // Create domain
      $result = $this->cpanel->execute('uapi', 'Fileman', 'get_file_content', [
        'dir' => $params->dir,
        'file' => $params->file,
        'from_charset' => '_DETECT_',
        'to_charset' => '_LOCALE_',
      ]);

      //Response
      $response = ["data" => $result];
      \DB::commit(); //Commit to Data Base
    } catch (\Exception $e) {
      \DB::rollback();//Rollback to Data Base
      $status = $this->getStatusError($e->getCode());
      $response = ["errors" => $e->getMessage()];
    }
    //Return response
    return response()->json($response ?? ["data" => "Request successful"], $status ?? 200);
  }

  /**
   * CREATE A ITEM
   *
   * @param Request $request
   * @return mixed
   */
  public function update(Request $request)
  {
    \DB::beginTransaction();
    try {
      $params = (object)$request->input('params') ?? [];//Get data

      //Validate Request
      $this->validateRequestApi(new UpdateFileRequest((array)$params));

      // Create domain
      $result = $this->cpanel->execute('uapi', 'Fileman', 'save_file_content', [
        'dir' => $params->dir,
        'file' => $params->file,
        'content' => $params->content,
        'from_charset' => 'UTF-8',
        'to_charset' => 'ASCII',
        'fallback' => '0',
      ]);

      //Response
      $response = ["data" => $result];
      \DB::commit(); //Commit to Data Base
    } catch (\Exception $e) {
      \DB::rollback();//Rollback to Data Base
      $status = $this->getStatusError($e->getCode());
      $response = ["errors" => $e->getMessage()];
    }
    //Return response
    return response()->json($response ?? ["data" => "Request successful"], $status ?? 200);
  }

  /**
   * CREATE A ITEM
   *
   * @param Request $request
   * @return mixed
   */
  public function option(Request $request)
  {
    \DB::beginTransaction();
    try {
      $params = (object)$request->input('params') ?? [];//Get data

      //Validate Request
      $this->validateRequestApi(new OptionFileRequest((array)$params));

      //Params api CPanel
      $paramsCPanel = [
        'op' => $params->op,
        'sourcefiles' => $params->sourcefiles,
        'doubledecode' => '1',
      ];

      if (isset($params->destfiles))
        $paramsCPanel['destfiles'] = $params->destfiles;

      // Create domain
      $result = $this->cpanel->execute(
        'api2',
        'Fileman',
        'fileop',
        $paramsCPanel
      );

      //Response
      $response = ["data" => $result];
      \DB::commit(); //Commit to Data Base
    } catch (\Exception $e) {
      \DB::rollback();//Rollback to Data Base
      $status = $this->getStatusError($e->getCode());
      $response = ["errors" => $e->getMessage()];
    }
    //Return response
    return response()->json($response ?? ["data" => "Request successful"], $status ?? 200);
  }
}
