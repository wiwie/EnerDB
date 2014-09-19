class ProductEnergyCost < ActiveRecord::Base
  attr_accessible :energy_cost, :product_id, :user_id
  belongs_to :product
  has_many :ratings
  belongs_to :user

  def average_rating
  	@ratings = self.ratings
  	average = nil
  	weightSums = 0
  	@ratings.each do |rating|
  		newRating = rating.rating
		if rating.user.rating.nil? 
			weight = 1
		else
			weight = rating.user.rating
		end
		weightSums += weight
		newRating *= weight
  		if not average
  			average = newRating
  		else
  			average += newRating
  		end
  	end
  	if average.nil? or weightSums == 0
  		return nil
  	else
  		return average/weightSums
  	end
  end

  def average_rating_string
  	return average_rating.nil? ? '?' : average_rating.to_s
  end

  def to_string
  	return self.product.product_name + " - " + self.user.email
  end
end
