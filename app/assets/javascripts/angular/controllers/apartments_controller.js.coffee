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

  options = {
    waitAfterMouseEnter: 2000 # milliseconds
  }

  tmp = {
    clickedAt: null
  }

  $http.get('/apartments.json').success (data) ->
    map.apartments = data

  map.setBuilding = (object, event = 'hover') ->
    if tmp.clickedAt != null && (Date.now() - tmp.clickedAt) < options.waitAfterMouseEnter
      return false
    else if event == 'click'
      tmp.clickedAt = Date.now()

      map.floor = object.floor
      map.building = object.building
    else
      map.floor = object.floor
      map.building = object.building

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

  # Make href only for available apartments
  map.apartmentHref = (apartment) ->
    if apartment.state == 'active' then Routes.refinery_apartments_apartment_path(apartment.id) else '#'

  return $scope


