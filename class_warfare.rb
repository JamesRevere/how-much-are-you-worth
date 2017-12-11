class Array
    def total # Returns the total number of something in an array
        cost = 0
        self.each do |value|
            cost += value
        end
        cost
    end
end

class Element
    attr_reader :price # The price of the element
    attr_reader :ammount # What percentage of the element is in your body.

    attr_accessor :quantity

	def initialize(price, ammount) # What hapens when the class is created
		@price = price
		@ammount = ammount
    end
    
    def quantity_init(grams) # Initalizes how much is in your body
        @quantity = grams * @ammount
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
puts [25, 25, 50].total
