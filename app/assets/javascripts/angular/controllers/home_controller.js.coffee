#
# HomePage controller
#
angular.module('seberov').controller 'HomeController', ($scope, uiGmapGoogleMapApi, multiSliderService) ->
  # Gmap setup
  objectLatitude = 49.999243
  objectLongitude = 14.516158
  # Not draggable for mobile devises until clicked
  $scope.mapDraggable = !Foundation.utils.is_small_only()

  $scope.map =
    center: { latitude: objectLatitude - 0.001, longitude: objectLongitude }
    marker:
      coords:
        latitude: objectLatitude
        longitude: objectLongitude
      options:
        labelContent: 'Statek Seberov'
    options:
      #disableDefaultUI: true
      scrollwheel: false
      streetViewControl: false
      draggable: $scope.mapDraggable
      zoomControlOptions:
        style: 3
    zoom: 13

  $scope.activateMap = ->
    $scope.map = _.extend($scope.map, options: draggable: true)

  $scope.slider = multiSliderService

  #
  $scope.totalApartmentsPlural = (lang) ->
    total = $scope.totalApartments

    if lang == 'en'
      if _.includes([1,21,31], $scope.totalApartments) then "#{total} apartment" else "#{total} apartments"
    else if lang == 'ru'
      if _.includes([1,21,31], $scope.totalApartments)
        return "#{total} квартира"
      else if _.includes([2,3,4,22,24], $scope.totalApartments)
        return "#{total} квартиры"
      else if _.includes([5..20], $scope.totalApartments)
        return "#{total} квартир"
    else if lang == 'cs'
      if _.includes([1,21,31], $scope.totalApartments) then "#{total} byt" else "#{total} bytů"

  return $scope
