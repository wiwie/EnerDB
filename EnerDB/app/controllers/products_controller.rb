class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  	@cost_rating = @product.cost_rating_string(false)
  	@cost_rating_rec = @product.cost_rating_string

  	@category = @product.product_category
  	if @category
  		@alternative_products = Product.where(:product_category_id => @category.id).limit(5)
  	end
  end

  def rate
  end

  def new
  end

  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Bla was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
end
