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
#= require lodash
#= require foundation-init
#= require angular
#= require angular-scroll
#= require angular-google-maps
#= require angular-ui-utils/mask
#= require angular/application
#= require utility
#= require lazyload
#= require jquery.nouislider.all.min
#= require_tree .

jQuery ->

  $(document).foundation()

  # Lazy load images (not load before user can see it)
  $('img').lazyload()

  # Multi slider
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

