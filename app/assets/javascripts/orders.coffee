jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  payment.setupForm()

payment =
  setupForm: ->
    $('#new_order').submit ->
        $('input[type=submit]').prop('disabled', true)
        if $('#card_number').length
          payment.processCard()
          false
        else
          true
  
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    Stripe.createToken(card, payment.handleStripeResponse)


  handleStripeResponse: (status, response) ->
    if status == 200
      $('#new_order').append($('<input type="hidden" name="stripe_card_token" />').val(response.id))
      alert(response.id)
      $('#new_order')[0].submit()
    else
      $('#stripe_error').text(response.error.message).show()
      $('input[type=submit]').prop('disabled', false)


