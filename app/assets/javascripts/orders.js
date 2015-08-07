$(document).ready(function(){
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));

  var handleStripeResponse = function(status, response) {

    var $form = $('#new_order');
  
    if (response.error) {
      // Show the errors on the form
      $form.find('#stripe_error').text(response.error.message).show();
      $form.find('input[type=submit]').prop('disabled', false);
    } 
    else {
      // token contains id, last4, and card type
      var token = response.id;
      alert(token);

      // Insert the token into the form so it gets submitted to the server
      $form.append($('<input type="hidden" name="stripe_card_token" />').val(token));

      // and re-submit
      $form.get(0).submit();
    }
  };

  jQuery(function($) {
    $('#new_order').submit(function(e) {

      var $form = $(this);
      // Disable the submit button to prevent repeated clicks
      $form.find('input[type=submit]').prop('disabled', true);
      Stripe.card.createToken($form, handleStripeResponse);
      // Prevent the form from submitting with the default action
      return false;
    });
  });

});