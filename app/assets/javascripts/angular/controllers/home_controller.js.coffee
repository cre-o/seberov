#
# HomePage controller
#
angular.module('seberov').controller 'HomeController', ($scope, uiGmapGoogleMapApi, multiSliderService) ->
  # Gmap setup
  objectLatitude = 49.999243
  objectLongitude = 14.516158

  $scope.map =
    center: { latitude: objectLatitude - 0.001, longitude: objectLongitude }
    marker:
      coords:
        latitude: objectLatitude
        longitude: objectLongitude
      options:
        labelContent: 'Statek Seberov'
    options:
      disableDefaultUI: true
    zoom: 13

  $scope.slider = multiSliderService

  #
  $scope.totalApartmentsPlural = (word) ->
    total = $scope.totalApartments

    if word == 'apartment'
      if _.includes([1,21,31], $scope.totalApartments) then "#{total} apartment" else "#{total} apartments"
    else if word == 'квартира'
      if _.includes([1,21,31], $scope.totalApartments)
        return "#{total} квартира"
      else if _.includes([2,3,4,22,24], $scope.totalApartments)
        return "#{total} квартиры"
      else if _.includes([5..20], $scope.totalApartments)
        return "#{total} квартир"
    else if word == 'apartmán'
      if _.includes([1,21,31], $scope.totalApartments) then "#{total} apartmán" else "#{total} apartmány"

  return $scope
