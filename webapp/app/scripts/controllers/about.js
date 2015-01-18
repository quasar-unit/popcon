'use strict';

/**
 * @ngdoc function
 * @name popconApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the popconApp
 */
angular.module('popconApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
