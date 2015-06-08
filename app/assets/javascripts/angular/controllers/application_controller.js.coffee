#
# Application controller
#

angular.module('seberov').controller 'ApplicationController', ($scope, $window, $document, uiGmapGoogleMapApi, $interval, $timeout, $location) ->
  # <== Fixed header
  $scope.fixedHeader = false

  # Main page scroll feature
  $document.on 'scroll', ->
    $scope.fixedHeader = true
    return $scope.$apply()
  # <== Fixed header

  @.setHeader = (position = 'fixed') ->
    $scope.fixedHeader = if position == 'fixed' then true else false


  # <== Multi Slider
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
    if angular.element('.js-multi-slider.active').height() > 0
      $scope.screenHeight = angular.element('.js-multi-slider.active').height()
  , 400
  # <== Multi Slider

  $scope.go = (path) ->
    $window.location = path

  $scope.gogo = (path) ->
    $window.open(path,'_blank')

  return $scope
