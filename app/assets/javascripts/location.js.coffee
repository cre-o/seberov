jQuery ->

  - if $('#location-orbit').length > 0

    $('#location-orbit').foundation
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
