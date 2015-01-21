'use strict'

###*
 # @ngdoc function
 # @name webappApp.controller:NameCtrl
 # @description
 # # NameCtrl
 # Controller of the webappApp
###
angular.module('webappApp')
  .controller 'NameCtrl', ($scope) ->
    $scope.todos = [
      'HTwee'
      'AwearJS'
      'Kawema'
    ]
