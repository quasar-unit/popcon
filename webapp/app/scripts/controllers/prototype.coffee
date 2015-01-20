'use strict'

###*
 # @ngdoc function
 # @name webappApp.controller:PrototypeCtrl
 # @description
 # # PrototypeCtrl
 # Controller of the webappApp
###
angular.module('webappApp')
  .controller 'PrototypeCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
