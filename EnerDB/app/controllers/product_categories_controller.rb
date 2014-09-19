class ProductCategoriesController < ApplicationController
  def index
  end

  def show
  	@category = ProductCategory.find(params[:id])
  	@products = Product.where(:product_category_id => @category.id)
  end

  def create
    @category = ProductCategory.new(params[:product_category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Bla was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
end
