class AddProductEnergyCostToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :product_energy_cost_id, :integer
  end
end
