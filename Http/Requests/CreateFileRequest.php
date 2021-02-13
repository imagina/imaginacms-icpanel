<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class CreateFileRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'path' => 'required',
      'name' => 'required',
      'permissions' => 'required',
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
