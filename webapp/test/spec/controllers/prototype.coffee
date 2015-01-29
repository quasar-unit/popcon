'use strict'

describe 'Controller: PrototypeCtrl', ->

  # load the controller's module
  beforeEach module 'webappApp'

  PrototypeCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PrototypeCtrl = $controller 'PrototypeCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
