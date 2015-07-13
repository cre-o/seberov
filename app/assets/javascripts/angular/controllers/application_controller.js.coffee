#
# Application controller
#
angular.module('seberov').controller 'ApplicationController', ($scope, $window, $document) ->
  # Locale setting
  $scope.locale = gon.locale

  # <== Fixed header
  $scope.fixedHeader = Foundation.utils.is_small_only()

  # Main page scroll feature
  $document.on 'scroll', ->
    $scope.fixedHeader = true
    return $scope.$apply()

  @.setHeader = (position = 'fixed') ->
    $scope.fixedHeader = if position == 'fixed' then true else false
  # <== Fixed header

  $scope.go = (path) ->
    $window.location = path

  $scope.gogo = (path) ->
    $window.open(path,'_blank')

  return $scope
