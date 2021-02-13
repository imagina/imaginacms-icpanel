<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class CreateSubDomainRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'dir' => 'required',
      'domain' => 'required',
      'rootdomain' => 'required'
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
