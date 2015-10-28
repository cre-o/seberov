#
# Application controller
#
angular.module('seberov').controller 'ApplicationController', ($scope, $window, $document) ->
  # Locale setting
  $scope.locale = gon.locale

  # <== Fixed header
  $scope.fixedHeader = false

  # Main page scroll feature
  $(window).on 'scroll', ->
    $scope.fixedHeader = true
    return $scope.$apply()

  $(window).on 'touchmove', ->
    $scope.fixedHeader = true
    return $scope.$apply()

  @.setHeader = (position = 'fixed') ->
    $scope.fixedHeader = if position == 'fixed' then true else false
  # <== Fixed header

  $scope.go = (path) ->
    $window.location = path

  $scope.gogo = (path) ->
    $window.open(path,'_blank')

  $scope.isMediumUp = ->
    Foundation.utils.is_medium_up()

  return $scope
