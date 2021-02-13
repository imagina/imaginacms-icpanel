<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class CreateDomainRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'dir' => 'required',
      'newdomain' => 'required',
      'subdomain' => 'required'
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
