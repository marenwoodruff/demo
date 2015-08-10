class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:seller, :new, :create, :edit, :update, :destroy]
  # devise/rails will check whether the user is signed in before it allows any of these actions to happen
  before_filter :user_only, only: [:edit, :update, :destroy]
  # makes sure that a user can't edit/update/destroy a product that isn't associated with them

  def seller
    @products = Product.where(user: current_user)
    # saying that the seller page should only show the products that she has uploaded
  end

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    # so that we can use @product.user.name in show/index and ID who uploads a product
    @product.user_id = current_user.id

    # if current_user.recipient.blank?
    #   require "stripe"
    #   Stripe.api_key = ENV["STRIPE_API_KEY"]
    #   token = params[:stripeToken]

    #   recipient = Stripe::Account.create( 
    #     :managed => false, 
    #     :country => 'US', 
    #     :email => current_user.email 
    #     )  

    #   current_user.recipient = recipient.id
    #   current_user.save
    # end
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end

    # checks to see if the current_user is the same person who created the product product
    def user_only
      if current_user != @product.user
        redirect_to root_url, alert: "I'm sorry. You can only edit products for which you are the seller."
      end
    end
end


