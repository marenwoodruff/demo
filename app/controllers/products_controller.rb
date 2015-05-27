class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:seller, :new, :create, :edit, :update, :destroy]
  before_filter :user_only, only: [:edit, :update, :destroy]

  def seller
    @products = Product.where(user: current_user)
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
    7.times { @product.product_images.build }
  end

  # GET /products/1/edit
  def edit
    @product = Product.new(product_params)
    7.times { @product.product_images.build }
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    @product.user_id = current_user.id

    respond_to do |format|
      if @product.save

        if params[:images]
          params[:images].each { |image|
            @product.product_images.create(image: image)
          }
        end

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

    def user_only
      if current_user != @product.user
        redirect_to root_url, alert: "I'm sorry. You can only edit products for which you are the seller."
      end
    end
end
