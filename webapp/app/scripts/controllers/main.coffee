'use strict'

###*
 # @ngdoc function
 # @name webappApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the webappApp
###
angular.module('webappApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
