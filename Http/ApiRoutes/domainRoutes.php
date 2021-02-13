<?php

use Illuminate\Routing\Router;

$router->group(['prefix' => 'domains'], function (Router $router) {
  //Route create
  $router->post('/', [
    'as' => 'api.icpanel.domain.create',
    'uses' => 'DomainApiController@create',
    'middleware' => ['auth:api']
  ]);
});
