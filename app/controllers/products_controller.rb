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

# destroying all of the user's fair_trade_certs
      #@user.fair_trade_certs.destroy_all
      # grabbing the names of the checkboxes and calling .each method on each checkbox_id - thereby creating a new user_fair_trade_cert relationship
      # params[:user][:fair_trade_cert_ids].each do |cert_id| 
      #   UserFairTradeCert.create(user_id: current_user.id, fair_trade_cert_id: cert_id.to_i)
      # end
# <%= hidden_field_tag "user[cause_ids][]", nil %>
#         <% Cause.all.each do |cause| %>
#           <div>
#             <%= check_box_tag "user[cause_ids][]", cause.id, @user.cause_ids.include?(cause.id), id: dom_id(cause) %>
#             <%= image_tag image_path(cause.logo_path) %>
#             <%= label_tag dom_id(cause), cause.name, id: dom_id(cause) %>
#             <p><%= cause.description %></p>
#           </div>
#         <% end %>

# <div class="form-group cause">
#   <h2><b>Causes <small>(Choose up to 3)</small></b></h2>
#   <p>These can include initiatives your company or the sale of your products support.</p>
#   <br />
#   <%= hidden_field_tag "user[cause_ids][]", nil %>
#   <% Cause.all.each do |cause| %>
#     <div>
#       <%= check_box_tag "user[cause_ids][]", cause.id, @user.cause_ids.include?(cause.id), id: dom_id(cause) %>
#       <%= image_tag image_path(cause.logo_path), size: "50x50" %>
#       <%= label_tag dom_id(cause), cause.name, id: cause.name %>
#       <p class="description"><%= cause.description %></p>
#     </div>
#   <% end %>
# </div>
