# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener "turbolinks:load", ->
  # Phone
  $('#user_phone').intlTelInput
    autoHideDialCode: false
    separateDialCode: false
    preferredCountries: [
      'gh'
      'ke'
      'cm'
      'ng'
    ]
    nationalMode: false
    initialCountry: 'auto'
    geoIpLookup: (callback) ->
      $.get('https://ipinfo.io', (->
      ), 'jsonp').always (resp) ->
        countryCode = if resp and resp.country then resp.country else ''
        callback countryCode
        $('#Country').val countryCode
        return
      return





      