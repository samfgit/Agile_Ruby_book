class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :cart

	def total_price
		if product then
			product.price * quantity
		else
			0
		end
	end

	def decrement
		if self.quantity > 1
			self.quantity-= 1
		else
			self.destroy
		end
	end

end
