# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#! turbolinks
#
#= require jquery
#= require jquery_ujs
#= require foundation/foundation
#= require foundation/foundation.slider
#= require home
#= require foundation/foundation.accordion
#= require foundation/foundation.alert
#= require foundation/foundation.clearing
#= require foundation/foundation.interchange
#= require foundation/foundation.orbit
#= require foundation/foundation.offcanvas
#= require foundation/foundation.tooltip
#= require foundation/foundation.reveal
#= require angular
#= require lodash
#= require utility
#= require angular-scroll
#= require angular-google-maps
#= require angular-ui-utils/mask
#= require angular/application
#= require lazyload
#= require jquery.nouislider.all.min
#= require apartments
#= require location
#= require_tree .

jQuery ->

  # Lazy load images (not load before user can see it)
  $('img').lazyload()

  # Exterior slider
  $('.js-multi-slider.orbit').foundation
    orbit: {
      animation: 'slide',
      next_on_click: true,
      animation_speed: 500,
      navigation_arrows: false,
      slide_number: false,
      next_class: 'orbit-next-bottom',
      prev_class: 'orbit-prev-bottom',
      caption_class: 'orbit-caption-bottom',
      bullets: false,
      circular: true,
      timer: false,
      variable_height: false,
      swipe: true
    }

