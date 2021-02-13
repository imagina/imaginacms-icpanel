<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class OptionFileRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'op' => 'required',
      'sourcefiles' => 'required',
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
