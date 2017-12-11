class Element
	def initialize(price, ammount)
		@price = price
		@ammount = ammount
	end

	def price
		@price
	end

	def ammount
		@ammount
	end
end

o = Element.new(0.30, 0.65)
p o