# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
# vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file. JavaScript code in this file should be added after the last require_* statement.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require axios
#= require lodash
#= require jquery3
#= require popper
#= require autocomplete.js/dist/autocomplete.min.js
#= require hogan
#= require bootstrap-sprockets
#= require bootstrap
#= require bootstrap-toggle
#= require jquery_ujs
#= require rails-ujs
#= require turbolinks
#= require lightgallery
#= require lg-autoplay
#= require lg-fullscreen
#= require lg-pager
#= require lg-thumbnail
#= require lg-hash
#= require lg-share
#= require lg-video
#= require lg-zoom
#= require google-maps
#= require raty-js
#= require js-offcanvas
#= require intl-tel-input
#= require summernote/dist/summernote-bs4.js
#= require jquery-timepicker/jquery.timepicker.js
#= require_tree .

document.addEventListener "turbolinks:load", ->
  $('[data-toggle="tooltip"]').tooltip
    animation: true

  $('.close').on 'click', ->
    $('.message').slideUp '1000'
    return

  