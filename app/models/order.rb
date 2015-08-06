class Order < ActiveRecord::Base
	# validates :address, :city, :state, :zip_code, presence: true

	belongs_to :product
	belongs_to :plan
	belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"

  attr_accessor :stripe_card_token

  # validates_presence_of :plan_id

  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(email: buyer.email,
        plan: plan_id, source: stripe_card_token)

      self.stripe_customer_token = customer.id
      save!
    end

  rescue Stripe::InvalidRequestError => e
    logger.error "Stripe error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card."
  end
end
