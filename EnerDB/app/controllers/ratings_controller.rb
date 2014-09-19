class RatingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @rating = Rating.new(params[:rating].merge({:user_id => current_user.id}))

    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating.product_energy_cost.product, notice: 'Rating was successfully created.' }
        format.json { render json: @rating, status: :created, location: @rating }
      else
        format.html { render action: "new" }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end
end
