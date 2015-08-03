# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# first see if the dom has loaded
jQuery ->
	# get the country dropdown by its ID (product_country_id)
  $('#product_country_id').parent().hide()
  # will select all of the country options inside of the select menu to variable 'countries'
  countries = $('#product_country_id').html()
  # .change() = will get triggered when a user selects a region
  $('#product_region_id').change ->
  	# .text() = fetches content of the :selected item, and stores it in the region variable
    region = $('#product_region_id :selected').text()
    # .filter()- filters by country(because of 'countries' variable)/region (because of label='region'); .html() = fetches content
    options = $(countries).filter("optgroup[label='#{region}']").html()
    if options
    	# if any options are found, we populate the dropdown with countries
      $('#product_country_id').html(options)
      # only show when the user selects a region
      $('#product_country_id').parent().show()
    else
    	# we won't display any options/ hidden by default; also hidden if there aren't any countries for a region
      $('#product_country_id').empty() 
      $('#product_country_id').parent().hide()


jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  product.setupForm()

product =
  setupForm: ->
    $('#new_product').submit ->
      if $('input').length > 6
        $('input[type=submit]').attr('disabled', true)
        Stripe.bankAccount.createToken($('#new_product'), product.handleStripeResponse)
        false

  handleStripeResponse: (status, response) ->
    if status == 200
      $('#new_product').append($('<input type="hidden" name="stripeToken" />').val(response.id))
      $('#new_product')[0].submit()
    else
      $('#stripe_error').text(response.error.message).show()
      $('input[type=submit]').attr('disabled', false)

