class Order < ActiveRecord::Base
	validates :address, :city, :state, presence: true

	belongs_to :product
	belongs_to :plan
	belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"

  attr_accessor :stripe_card_token

  validates_presence_of :plan_id

  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email,
        plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end
