# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  payment.setupForm()

product =
  setupForm: ->
    $('#new_product').submit ->
        $('input[type=submit]').attr('disabled', true)
        Stripe.card.createToken($('#new_product'), product.handleStripeResponse)
        false

  handleStripeResponse: (status, response) ->
    if status == 200
      $('#new_order').append($('<input type="hidden" name="stripeToken" />').val(response.id))
      $('#new_order')[0].submit()
    else
      $('#stripe_error').text(response.error.message).show()
      $('input[type=submit]').attr('disabled', false)


# jQuery(function ($) {
  # Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
  # payment.setupForm();

  # $("#new_order").submit(function (event) {
    # var $form;
    # $form = $(this);
    # $form.find("input[type=submit]").prop("disabled", true);
    # Stripe.card.createToken($form, handleStripeResponse);
    # return false;
  # });

  # var handleStripeResponse = function (status, response) {
    # if (status == 200) {
      # $('#new_order').append($('<input type="hidden" name="stripeToken" />').val(response.id));
      # $('#new_order')[0].submit();
    # }
    # else {
      # $('#stripe_error').text(response.error.message).show()
      # $('input[type=submit]').attr('disabled', false)  
    # }
  # };