# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->
  # Google Map
  window.initMap = ->
    uluru = 
      lat: -25.363
      lng: 131.044

    map = new (google.maps.Map)(document.getElementById('map__container'),
      zoom: 4
      center: uluru)

    contentString = '<div id="content">
      <div id="siteNotice">
      </div>
      <h1 id="firstHeading" class="firstHeading">Uluru</h1>
      <div id="bodyContent">
      <p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large  
      sandstone rock formation in the southern part of the 
      Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) 
      south west of the nearest large town, Alice Springs; 450&#160;km 
      (280&#160;mi) by road. Kata Tjuta and Uluru are the two major 
      features of the Uluru - Kata Tjuta National Park. Uluru is 
      sacred to the Pitjantjatjara and Yankunytjatjara, the 
      Aboriginal people of the area. It has many springs, waterholes, 
      rock caves and ancient paintings. Uluru is listed as a World 
      Heritage Site.</p>
      <p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">
      https://en.wikipedia.org/w/index.php?title=Uluru</a> 
      (last visited June 22, 2009).</p>
      </div>
    </div>'

    infowindow = new (google.maps.InfoWindow)(content: contentString)

    marker = new (google.maps.Marker)(
      position: uluru
      map: map
      title: 'Uluru (Ayers Rock)')

    marker.addListener 'click', ->
      infowindow.open map, marker
      return
    return
  
  # Offcanvas
  $('#off-canvas').offcanvas
    modifiers: "bottom,overlay"
    closeButtonClass: "js-offcanvas-close"

  $(document).trigger("enhance")  

  # jQuery Raty
  $('.company__ratings').raty
    path: '/assets/images/'
    readOnly: true
    score: ->
      $(this).attr 'data-rating'

  # Tabs
  $('.tab-panel__nav li').click ->
    tabId = $(this).data('tab')

    $('.tab-panel__nav li').removeClass('tab-panel__nav--link--current')
    $('.tab-panel__content section').removeClass('tab-panel__pane--current')

    $(this).addClass('tab-panel__nav--link--current')
    $("##{tabId}").addClass('tab-panel__pane--current')
    return

  $frame  = $('.gallery')
  $slidee = $frame.children('ul').eq(0)
  $wrap   = $frame.parent()

  # Call Sly on frame
  $frame.sly
    horizontal: 1
    itemNav: 'basic'
    smart: 1
    activateOn: 'click'
    mouseDragging: 1
    touchDragging: 1
    releaseSwing: 1
    startAt: 1
    scrollBar: $wrap.find('.scrollbar')
    scrollBy: 1
    pagesBar: $wrap.find('.pages')
    activatePageOn: 'click'
    speed: 300
    elasticBounds: 1
    # easing: 'easeOutExpo'
    dragHandle: 1
    dynamicHandle: 0
    clickBar: 1
    
  $('.user__ratings').raty
      path: '/assets/images/'
  
  # Summernote Editor
  # $('textarea#comment').summernote
  #   height: 250
  #   minHeight: null
  #   maxHeight: null
  #   focus: true
  #   toolbar: [
  #     ['style', 'bold', 'italic', 'underline', 'clear']
  #   ]

  # Light Gallery
  $(".gallery").lightGallery
    mode: 'lg-lollipop-rev'
    cssEasing: 'cubic-bezier(0.680, -0.550, 0.265, 1.550)'
    closable: false
    selector: '.gallery__item'

  $('#first_image').change ->
    overlay = $('.overlay')
    content = $('.image-content')

    overlay.css 'display', 'block'
    setTimeout (->
      content.css 'display', 'block'
      overlay.css 'display', 'none'
    ), 2000
    # console.log formDatas
    # formData.append 'first_image', $('#first_image').files

    # console.log $('#first_image')