class AddNameToProduct < ActiveRecord::Migration
  def change
    add_column :products, :product_name, :string, :null => false
  end
end
