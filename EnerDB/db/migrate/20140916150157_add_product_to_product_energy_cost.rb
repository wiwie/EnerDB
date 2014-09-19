class AddProductToProductEnergyCost < ActiveRecord::Migration
  def change
    add_column :product_energy_costs, :product_id, :integer
  end
end
