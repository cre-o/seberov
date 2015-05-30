angular.module('seberov').controller 'ApartmentsController', ($scope, $document) ->

  return $scope

angular.module('seberov').controller 'ApartmentsMapController', ($scope, $http, $document) ->
  map = @
  map.buildings = ['a', 'b', 'c', 'd']
  map.building = 'a'
  map.floor = 1
  map.apartments = []

  $http.get('/apartments.json').success (data) ->
    map.apartments = data

  map.setBuilding = (building) ->
    map.building = building

  map.rerender = ->
    map.renderClass = "building-#{map.building}-floor-#{map.floor}"

  map.renderClass = ->
    return map.renderClass

  return map


