'use strict'

describe 'Controller: NameCtrl', ->

  # load the controller's module
  beforeEach module 'webappApp'

  NameCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NameCtrl = $controller 'NameCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
