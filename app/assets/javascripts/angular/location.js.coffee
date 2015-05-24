angular.module('seberov').controller 'LocationController', ($scope, uiGmapGoogleMapApi) ->
  map = {
    center:
      latitude: 49.999243
      longitude: 14.516158
    options:
      scrollwheel: false
    markers: [
      {
        id: 1
        icon: gon.mapMarkerIcons.big.medicine
        latitude: 49.997150
        longitude: 14.516002
        showWindow: false
      },
      {
        id: 2
        latitude: 49.996860
        longitude: 14.517640
        icon: gon.mapMarkerIcons.small.autobus
      },
      {
        id: 3
        latitude: 49.998912
        longitude: 14.517187
        icon: gon.mapMarkerIcons.small.autobus
      },
      {
        id: 4
        latitude: 50.001657
        longitude: 14.515993
        icon: gon.mapMarkerIcons.small.autobus
      },
      {
        id: 5
        latitude: 49.996779
        longitude: 14.517268
        icon: gon.mapMarkerIcons.small.relax
      },
      {
        id: 5
        latitude: 49.996779
        longitude: 14.517268
        icon: gon.mapMarkerIcons.small.autobus
      },
      {
        id: 6
        latitude: 50.012353
        longitude: 14.510415
        icon: gon.mapMarkerIcons.small.school
      },
      {
        id: 7,
        latitude: 50.011395
        longitude: 14.514031
        icon: gon.mapMarkerIcons.small.administration
      },
      {
        id: 8
        latitude: 50.013206
        longitude: 14.513536
        icon: gon.mapMarkerIcons.small.police
      },
      {
        id: 9
        latitude: 50.013206
        longitude: 14.513536
        icon: gon.mapMarkerIcons.small.library
      },
      {
        id: 10
        latitude: 49.996603
        longitude: 14.517275
        icon: gon.mapMarkerIcons.small.playground
      },
      {
        id: 11
        latitude: 50.009919
        longitude: 14.513655
        icon: gon.mapMarkerIcons.small.sport
      }
    ]
  }

  $scope.map =
    center: map.center
    markers: map.markers
    zoom: 13

  return $scope
