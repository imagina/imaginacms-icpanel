<?php

namespace Modules\Icpanel\Http\Controllers\Api;

use Modules\Ihelpers\Http\Controllers\Api\BaseApiController;
use Modules\Icpanel\Http\Requests\CreatePrivilegesDBRequest;
use Modules\Icpanel\Http\Controllers\Api\CPanel;
use Mockery\CountValidator\Exception;
use Illuminate\Http\Request;
use Route;
use Log;

class PrivilegesDBApiController extends BaseApiController
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
      $this->validateRequestApi(new CreatePrivilegesDBRequest((array)$data));

      // Create domain
      $result = $this->cpanel->execute('uapi', 'Mysql', 'set_privileges_on_database', [
        'user' => $data->user,
        'database' => $data->database,
        'privileges' => $data->privileges,
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

}
