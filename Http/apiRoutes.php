<?php

use Illuminate\Routing\Router;
/** @var Router $router */

$router->group(['prefix' =>'/icpanel/v1'], function (Router $router) {

  //======  Domains
  require('ApiRoutes/domainRoutes.php');

  //======  Restaurants
  require('ApiRoutes/restaurantRoutes.php');
});
