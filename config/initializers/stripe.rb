Rails.configuration.stripe = {
  :publishable_key => stripe_config[:publishable_key],
  :secret_key      => stripe_config[:secret_key]
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]