angular.module('seberov').controller 'ApartmentsController', ($scope, $document) ->

  return $scope

angular.module('seberov').controller 'ApartmentsMapController', ($scope, $document) ->
  map = @
  map.building = 'a'
  map.floor = null

  map.renderClass = "building-#{map.building}" + if map.floor?? then "-floor-#{map.floor}" else ""

  return $scope
