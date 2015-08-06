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
    @order.buyer_id = current_user.id

    # Stripe.api_key = ENV["STRIPE_API_KEY"]
    # token = params[:stripeToken]

    respond_to do |format|
      if @order.save_with_payment
        charge = Stripe::Charge.create(
                  :amount => @plan.price.to_i * 100,
                  :currency => "usd",
                  :source => params[:stripe_card_token],
                  :description => "Test Charge"
        )
        format.html { redirect_to root_url, notice: 'Thank you for subscribing.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { redirect_to back, notice: 'Not yet working.' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :city, :state)
    end
end
