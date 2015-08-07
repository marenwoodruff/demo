class PlansController < ApplicationController
  def index
  	@plans = Plan.all
	  # @stripe_list = Stripe::Plan.all
	  # @plans = @stripe_list[:data]
  end
end
