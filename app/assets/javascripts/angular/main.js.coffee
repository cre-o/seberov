angular.module('seberov').controller 'MainPageController', ($scope,  $window, uiGmapGoogleMapApi, $interval, $timeout) ->
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

  # Navigation
  @.screenNum = 1

  @.setScreen = (number) ->
    @.screenNum = number
    console.log @.screenNum

  @.isCurrentScreen = (number) ->
    @.screenNum == number

  $scope.refreshOrbit = ->
    $timeout ->
      $(document).foundation('orbit', 'reflow')
    , 100

  $scope.loadWebcam = ->
    $interval ->
      $scope.webcamSrc = 'http://151.249.106.49/images/logo.gif' + '?' + new Date().getTime()
    , 2000

  # Orbit styling
  $scope.screenHeight = 400 # minimal height
  if Foundation.utils.is_medium_only()
    $scope.screenHeight = 600 # minimal height
  if Foundation.utils.is_large_up()
    $scope.screenHeight = 900 # minimal height

  # Resizing
  $interval ->
    if angular.element('.js-main-screen.active').height() > 0
      $scope.screenHeight = angular.element('.js-main-screen.active').height()
  , 400

  return $scope
