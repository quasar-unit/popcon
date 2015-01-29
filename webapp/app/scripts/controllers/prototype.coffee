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
    $scope.pops = []
    $scope.mainTextKeypress = (self,evt) ->
      console.log evt
      console.log self
      console.log this
      addPops $(self).val() if evt.charCode is 10
    $scope.addPops = (txt) ->
      $scope.addPop(txt.split('\n'))
    $scope.addPop = (pops...) ->
      for pop in pops
        $('<div />')
        .text(pop)
        .data('')
        .appendTo($('body'))
