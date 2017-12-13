# How Much Are You Worth?
# Have you ever wondered how much you would sell for if you were split up into your individual elements? Well, now you can!

class Array
    def total # A way to get the total of an array's numbers
        cost = 0
        self.each do |value|
            cost += value
        end
        cost
    end
end

# Need to update class
class Element
	attr_reader :symbol
    attr_reader :price # The price of the element
    attr_reader :ammount # What percentage of the element is in your body.

	def initialize(symbol, price, ammount)
        # Coerce both inputs into floats
        @symbol = symbol.to_s
        @price = price.to_f
        @ammount = ammount.to_f
	end
    
	def quantity_init(grams) # Initalizes how much is in your body
        grams * @ammount
	end
end

ELEMENTS = [
    Element.new('O', 0.30, 0.65),
    Element.new('C', 2.40, 0.18),
    Element.new('H', 12, 0.10),
    Element.new('N', 0.40, 0.03),
    Element.new('Ca', 11, 0.015),
    Element.new('P', 4, 0.01),
    Element.new('K', 85, 0.0035),
    Element.new('S', 0.25, 0.0025),
    Element.new('Cl', 0.15, 0.0015),
    Element.new('Na', 7, 0.0015)
]

# Gets the input
pounds = ARGV[0].to_i
if pounds == 0 # If input wasn't provided via the CLI
	print "How much do you weigh? "
	pounds = gets.chomp.to_i
end

# Converts pounds to grams
grams = pounds * 0.4536 * 1000

total = ELEMENTS.map do |element| # Gets how much the element is worth in you for each one
	element.price * element.ammount * (grams/100)
end.reduce(:+) # Added together

puts "You are worth: $#{total.round(2)}"