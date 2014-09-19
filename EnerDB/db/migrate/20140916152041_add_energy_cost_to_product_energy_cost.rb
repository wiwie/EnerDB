class AddEnergyCostToProductEnergyCost < ActiveRecord::Migration
  def change
    add_column :product_energy_costs, :energy_cost, :float
  end
end
