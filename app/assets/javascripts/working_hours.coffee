# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->
  # Timepicker
  $('.timepicker').timepicker
    timeFormat: 'h:mm p'
    interval: 60
    minTime: '8'
    # maxTime: '9:00pm'
    defaultTime: '8'
    startTime: '8:00'
    dynamic: true
    dropdown: true
    scrollbar: false