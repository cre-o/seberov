angular.module('seberov').controller 'MainPageController', ($scope, $window, $interval) ->
  # Map resize
  @.mapWidth  = 200
  @.mapHeight = 455

  if Foundation.utils.is_medium_only()
    @.mapWidth  = 300

  if Foundation.utils.is_large_only()
    @.mapWidth  = 400

  if Foundation.utils.is_xlarge_only()
    @.mapWidth  = 550

  # Orbit styling
  $scope.orbitHeight = 450
  $interval ->
    $scope.orbitHeight = angular.element('#main-second-orbit').height();
  , 500

  return $scope
