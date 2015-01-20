'use strict'

###*
 # @ngdoc function
 # @name webappApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the webappApp
###
angular.module('webappApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
