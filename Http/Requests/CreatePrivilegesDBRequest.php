<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class CreatePrivilegesDBRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'user' => 'required',
      'database' => 'required',
      'privileges' => 'required',
    ];
  }

  public function translationRules()
  {
    return [];
  }

  public function authorize()
  {
    return true;
  }

  public function messages()
  {
    return [];
  }

  public function translationMessages()
  {
    return [];
  }

}
