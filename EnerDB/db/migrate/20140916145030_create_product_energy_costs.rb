class CreateProductEnergyCosts < ActiveRecord::Migration
  def change
    create_table :product_energy_costs do |t|

      t.timestamps
    end
  end
end
