class CreateProductProducts < ActiveRecord::Migration
  def change
    create_table :product_products do |t|
      t.integer :product_id
      t.integer :product_2_id

      t.timestamps
    end

    add_index :product_products, [:product_id, :product_2_id], :unique => true
  end
end
