# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener "turbolinks:load", ->
  # Algolia & Typeahead
  client = algoliasearch("8VCXR48893", "ba171b66d38740b09e75bc8f57e03ddc")
  serviceIndex = client.initIndex('Service')
  categoryIndex = client.initIndex('Category')

  category = $('#category')
  category.focus
  category.typeahead { hint: false, highlight: true },
    {
      source: serviceIndex.ttAdapter()
      displayKey: 'name'
      templates: suggestion: (hit) -> 
        '<div class="d-flex justify-content-between">' + 
          '<h5 class="name">' + hit._highlightResult.name.value + '</h5>' +
          '<small class="text-muted">' + hit._highlightResult.slug.value + '</small>' +
        '</div>'
    },
    {
      source: categoryIndex.ttAdapter()
      displayKey: 'name'
      templates: suggesstion: (hit) -> 
        '<div class="d-flex justify-content-between">' + 
          '<h5 class="name">' + hit._highlightResult.name.value + '</h5>' +
          '<small class="text-muted">' + hit._highlightResult.slug.value + '</small>' +
        '</div>'
    }

  $('#get_location').click ->
    options = 
      enableHighAccuracy: true
      timeout: 5000
      maximumAge: 0

    success = (pos) ->
      getUserLocation(pos)
      # console.log pos
      # console.log pos.longitude
      crd = pos.coords
      return

    show_error = (error) ->
      switch error.code
        when error.PERMISSION_DENIED
          alert 'Permission denied by user.'
        when error.POSITION_UNAVAILABLE
          alert 'Location position unavailable.'
        when error.TIMEOUT
          alert 'Request timeout.'
        when error.UNKNOWN_ERROR
          alert 'Unknown error.'
      return

    navigator.geolocation.getCurrentPosition success, show_error, options

  getUserLocation = (pos) ->
    lat = pos.coords.latitude
    lng = pos.coords.longitude

    axios.get('https://ipinfo.io')
    .then (response) ->
      city = response.data.city
      location = $('#location')
      if city != '' and $(location).val != ''
        $(location).val city

