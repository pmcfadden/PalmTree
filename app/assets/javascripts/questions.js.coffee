# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.rating-explanation').hide()

if $('select option:selected').text() == "Red" 
  $('.rating-explanation').show()
