class Element
    attr_reader :price
    attr_reader :ammount

    attr_accessor :quantity

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
o.quantity = 15
puts o.quantity
puts o.price
puts o.ammount