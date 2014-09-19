class Product < ActiveRecord::Base
  attr_accessible :product_name, :product_category_id
  has_many :product_energy_costs
  has_many :product_product
  has_many :products, through: :product_product
  belongs_to :product_category

  def cost_rating(recursive=true)
  	result = [nil,nil]
  	@costs = self.product_energy_costs
    @count = 0
  	if @costs.count > 0
  		# find the one with highest average rating
      tmp = @costs.sort_by{|x| x.average_rating.nil? ? -1 : - x.average_rating}.first
      result[0] = tmp.energy_cost
      
      if tmp.average_rating
        result[1] = tmp.average_rating
        @count += 1
      end
  	end
    if recursive
    	self.products.each do |product|
    		sub = product.cost_rating
        if sub[0]
          if result[0].nil?
            result[0] = sub[0]
          else
            result[0] += sub[0]
          end
        end
        if sub[1]
          if result[1].nil?
            result[1] = sub[1]
          else
            result[1] += sub[1]
          end
          @count += 1
        end
    	end
    end
    if not result[1].nil?
      result[1] = result[1] / @count
    end
  	return result
  end

  def cost_rating_string(recursive=true)
    @tmp = cost_rating(recursive)
    return [@tmp[0] ? @tmp[0].to_s : '?',@tmp[1] ? @tmp[1].to_s : '?']
  end
end
