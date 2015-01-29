'use strict'

###*
 # @ngdoc overview
 # @name webappApp
 # @description
 # # webappApp
 #
 # Main module of the application.
###
angular
  .module('webappApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/prototype',
        templateUrl: 'views/prototype.html'
        controller: 'PrototypeCtrl'
      .otherwise
        redirectTo: '/'

