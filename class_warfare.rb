class Element
    attr_reader :price
    attr_reader :ammount

	def initialize(price, ammount)
		@price = price
		@ammount = ammount
	end
=begin
	def price
		@price
	end

	def ammount
		@ammount
    end
=end
end


o = Element.new(0.30, 0.65)
p o
puts o.price
puts o.ammount