class ProductEnergyCostsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @cost = ProductEnergyCost.new(params[:product_energy_cost].merge({:user_id => current_user.id}))

    respond_to do |format|
      if @cost.save
        format.html { redirect_to @cost.product, notice: 'Energy Costs for Product were successfully created.' }
        format.json { render json: @cost, status: :created, location: @cost }
      else
        format.html { render action: "new" }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end
end
