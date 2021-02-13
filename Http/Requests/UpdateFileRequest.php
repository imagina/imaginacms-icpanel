<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class UpdateFileRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'dir' => 'required',
      'file' => 'required',
      'content' => 'required',
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
