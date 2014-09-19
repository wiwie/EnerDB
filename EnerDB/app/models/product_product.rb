class ProductProduct < ActiveRecord::Base
  attr_accessible :product_2_id, :product_id

  belongs_to :product, foreign_key: 'product_id'
  belongs_to :product, foreign_key: 'product_2_id'
end
