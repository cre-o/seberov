angular.module('seberov').controller 'MainPageController', ($scope, $window, $timeout) ->
  # Map resize
  @.mapWidth  = 200
  @.mapHeight = 455

  if Foundation.utils.is_medium_only()
    @.mapWidth  = 300

  if Foundation.utils.is_large_only()
    @.mapWidth  = 400

  if Foundation.utils.is_xlarge_only()
    @.mapWidth  = 550

  # Orbit
  $scope.orbitHeight = 450
  $timeout ->
    $scope.orbitHeight = angular.element('#main-second-orbit').height();
  , 300

  # Orbit styling
  # $window.on 'resize', ->
  #   console.log $('#main-second-orbit').height()

  # $scope.notifyServiceOnChage = ->
  #    console.log $scope.windowHeight

  return $scope

