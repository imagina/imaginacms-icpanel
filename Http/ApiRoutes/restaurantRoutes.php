<?php

use Illuminate\Routing\Router;

$router->group(['prefix' => 'restaurants'], function (Router $router) {
  //Route create
  $router->post('/', [
    'as' => 'api.icpanel.restaurant.create',
    'uses' => 'RestaurantApiController@create',
    //'middleware' => ['auth:api']
  ]);
});
