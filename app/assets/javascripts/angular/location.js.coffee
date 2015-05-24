angular.module('seberov').controller 'LocationController', ($scope, uiGmapGoogleMapApi) ->
  map = {
    center:
      latitude: 49.999243
      longitude: 14.516158
    options:
      scrollwheel: false
    markers:
      medicine:
        id: 1
        coords:
          latitude: 49.997150
          longitude: 14.516002
        smallIcon: { url: gon.mapMarkerIcons.small.medicine }
        bigIcon: { url: gon.mapMarkerIcons.big.medicine }

      autobus:
        items: [
          {
            id: 2
            coords:
              latitude: 49.996860
              longitude: 14.517640
          },
          {
            id: 3
            coords:
              latitude: 49.998912
              longitude: 14.517187
          },
          {
            id: 4
            coords:
              latitude: 50.001657
              longitude: 14.515993
          }
        ],
        smallIcon: { url: gon.mapMarkerIcons.small.autobus }
        bigIcon: { url: gon.mapMarkerIcons.big.autobus }

      relax:
        id: 5
        coords:
          latitude: 49.996779
          longitude: 14.517268
        smallIcon: { url: gon.mapMarkerIcons.small.relax }
        bigIcon: { url: gon.mapMarkerIcons.big.relax }

      school:
        id: 6
        coords:
          latitude: 50.012353
          longitude: 14.510415
        smallIcon: { url: gon.mapMarkerIcons.small.school }
        bigIcon: { url: gon.mapMarkerIcons.big.school }

      administration:
        id: 7
        coords:
          latitude: 50.011395
          longitude: 14.514031
        smallIcon: { url: gon.mapMarkerIcons.small.administration }
        bigIcon: { url: gon.mapMarkerIcons.big.administration }

      police:
        id: 8
        coords:
          latitude: 50.013206
          longitude: 14.513536
        smallIcon: { url: gon.mapMarkerIcons.small.police }
        bigIcon: { url: gon.mapMarkerIcons.big.police }

      library:
        id: 9
        coords:
          latitude: 50.013206
          longitude: 14.513536
        smallIcon: { url: gon.mapMarkerIcons.small.library }
        bigIcon: { url: gon.mapMarkerIcons.big.library }

      playground:
        id: 10
        coords:
          latitude: 49.996603
          longitude: 14.517275
        smallIcon: { url: gon.mapMarkerIcons.small.playground }
        bigIcon: { url: gon.mapMarkerIcons.big.playground }

      sport:
        id: 11
        coords:
          latitude: 50.009919
          longitude: 14.513655
        smallIcon: { url: gon.mapMarkerIcons.small.sport }
        bigIcon: { url: gon.mapMarkerIcons.big.sport }
  }

  # Mapping initial icons
  reset = ->
    _.each map.markers, (n) ->
      n['icon'] = n.smallIcon

  $scope.currentItem = 'school'

  $scope.setCurrentMarkers = (name) ->
    reset()
    map.markers[name]['icon'] = map.markers[name]['bigIcon']
    $scope.currentItem = name

  $scope.setCurrentMarkers($scope.currentItem)

  $scope.isCurrent = (name) ->
    $scope.currentItem == name

  $scope.map =
    center: map.center
    markers: map.markers
    zoom: 13

  return $scope
