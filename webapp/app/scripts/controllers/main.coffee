'use strict'


angular.module('webappApp')
.controller 'MainCtrl', ($scope) ->
  $scope.text = 'sddddd'
  $scope.index = 0
  $scope.todos = [
    'HTML5 Boilerplate'
    'AngasdS'
    'Karma'
  ]
  $scope.name = 'asd'

.directive 'addbutton', ($compile) ->
  return {
  restrict: 'E',
  template: '<button ng-click="add_success()">asdasdasd</button>'
  controller: ($scope) ->
    $scope.add_success = ->
      el = $compile('<div drag contenteditable ng-model="todos['+$scope.index+']"]></div>')($scope)
      angular.element(document.getElementById("section")).append(el)
      $scope.index++
  }
.directive 'drag', ($document) ->
  return (scope,element,attr) ->
    startX=0
    startY=0
    x=0
    y=0
    element.css({
      position: 'relative',
      width: 100,
      height: 100,
      border: '1px solid black',
      backgroundColor: 'yellow',
      cursor: 'pointer'
    })

    element.on('mousedown',(event)->
      event.preventDefault()
      startX = event.pageX - x
      startY = event.pageY - y
      element.css({
        border: '1px solid red'
      })
      $document.on('mousemove', mousemove)
      $document.on('mouseup', mouseup)
    )
    element.on('dblclick',(event)->
      event.preventDefault()
      element.css({
        backgroundColor: 'blue',
      })
    )


    mousemove = (event) ->
      y = event.pageY - startY
      x = event.pageX - startX
      element.css({
        top: y + 'px',
        left:  x + 'px'
      });

    mouseup = ->
      element.css({
        border: '1px solid black',
      })
      $document.off('mousemove', mousemove);
      $document.off('mouseup', mouseup);

.directive 'contenteditable', ->
  return {
    restrict: "A",
    require: "ngModel",
    link : (scope,element,attrs,ngModel) ->
      read = ->
        ngModel.$setViewValue(element.html())
      ngModel.$render = ->
        element.html(ngModel.$viewValue||"")
      element.bind("blur keyup change",->
        scope.$apply(read)
      )
  }


