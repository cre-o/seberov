angular.module('seberov').controller 'ApartmentsController', ($scope, $document) ->

  return $scope

angular.module('seberov').controller 'ApartmentsMapController', ($scope, $http, $document, $sce, $timeout) ->
  map = @
  map.buildings = ['a', 'b', 'c', 'd']
  map.building = 'a'
  map.floor = 1
  map.apartments = []
  map.currentApartment = null
  map.tooltip = false

  $http.get('/apartments.json').success (data) ->
    map.apartments = data

  map.setBuilding = (building) ->
    map.building = building

  map.setCurrentApartment = (apartment) ->
    map.currentApartment = apartment if apartment.state == 'active'

  map.rerender = ->
    map.renderClass = "building-#{map.building}-floor-#{map.floor}"

  map.renderClass = ->
    return map.renderClass

  map.showTooltip = ->
    $timeout ->
      if map.tooltip == false
        $scope.tooltipHtml = $sce.trustAsHtml(angular.element('#base-tooltip').html())
        map.tooltip = true
    , 50

  map.hideTooltip = ->
    $scope.tooltipHtml = ""
    map.tooltip = false

  return $scope


