#= require foundation/foundation
#= require foundation/foundation.slider
#= require foundation/foundation.accordion
#= require foundation/foundation.alert
#= require foundation/foundation.clearing
#= require foundation/foundation.interchange
#= require foundation/foundation.orbit
#= require foundation/foundation.offcanvas
#= require foundation/foundation.tooltip
#= require foundation/foundation.reveal

jQuery ->
  # Main big slider
  $('#main-orbit').foundation
    orbit: {
      pause_on_hover: false,
      timer_speed: 3000,
      animation_speed: 500,
      navigation_arrows: false,
      bullets: false,
      caption_class: 'orbit-caption-middle',
      slide_number: false,
      swipe: true
    }
