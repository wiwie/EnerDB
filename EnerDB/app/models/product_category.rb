class ProductCategory < ActiveRecord::Base
  attr_accessible :category_name, :product_category_id

  belongs_to :product_category
end
