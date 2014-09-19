class AddUserToProductEnergyCost < ActiveRecord::Migration
  def change
    add_column :product_energy_costs, :user_id, :integer
  end
end
