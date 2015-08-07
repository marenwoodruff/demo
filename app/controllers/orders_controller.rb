class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def sales
    @orders = Order.all.where(seller: current_user).order("created_at DESC")
  end

  def purchases
    @orders = Order.all.where(buyer: current_user).order("created_at DESC")
  end

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/new
  def new
    # @order = Order.new
    # @product = Product.find(params[:product_id])
    @plan = Plan.find(params[:plan_id])
    @order = @plan.orders.build
    puts @order
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @plan = Plan.find(params[:order][:plan_id])

    Stripe.api_key = ENV['API_KEY']

    customer = Stripe::Customer.create(
                  email: current_user.email,
                  plan: params[:plan_id],
                  source: params[:stripe_card_token]
    )

    charge = Stripe::Charge.create(
                  customer: customer.id,
                  amount: @plan.price.to_i * 100,
                  currency: "usd",
                  description: @plan.name
    )

    redirect_to root_url, notice: 'Thank you for subscribing.'

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to plans_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :city, :state, :plan_id, :stripe_customer_token, :buyer_id, :seller_id, :product_id)
    end
end
