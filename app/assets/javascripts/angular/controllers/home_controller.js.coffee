#
# HomePage controller
#
angular.module('seberov').controller 'HomeController', ($scope, uiGmapGoogleMapApi, multiSliderService) ->
  # Gmap setup
  objectLatitude = 49.999243
  objectLongitude = 14.516158

  $scope.map =
    center: { latitude: objectLatitude, longitude: objectLongitude }
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

  return $scope
