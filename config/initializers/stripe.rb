Rails.configuration.stripe = {
  :publishable_key => ENV['publishable_key'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]