<?php

namespace Modules\Icpanel\Http\Requests;

use Modules\Core\Internationalisation\BaseFormRequest;

class CreateRestaurantRequest extends BaseFormRequest
{
  public function rules()
  {
    return [
      'domain' => 'required'
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
