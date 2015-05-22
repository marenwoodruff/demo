# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#product_country_id').parent().hide()
  countries = $('#product_country_id').html()
  $('#product_region_id').change ->
    region = $('#product_region_id :selected').text()
    options = $(countries).filter("optgroup[label='#{region}']").html()
    if options
      $('#product_country_id').html(options)
      $('#product_country_id').parent().show()
    else
      $('#product_country_id').empty()
      $('#product_country_id').parent().hide()