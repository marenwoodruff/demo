class Order < ActiveRecord::Base

	belongs_to :product
	belongs_to :plan
	belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"

  attr_accessor :stripe_card_token

  # validates :address, :city, :state, presence: true
  # validates_presence_of :plan_id

end
