class Rating < ActiveRecord::Base
  attr_accessible :product_energy_cost_id, :rating, :user_id
  belongs_to :product_energy_cost
  belongs_to :user
end
