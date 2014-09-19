class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :category_name
      t.integer :product_category

      t.timestamps
    end
  end
end