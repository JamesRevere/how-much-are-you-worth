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
    attr_reader :price # The price of the element
    attr_reader :ammount # What percentage of the element is in your body.

	def initialize(price, ammount) # What happens when the class is created
		@price = price
		@ammount = ammount
	end
    
	def quantity_init(grams) # Initalizes how much is in your body
        grams * @ammount
	end
end

# Need to retool to work with new class
o = Element.new(0.30, 0.65)
c = Element.new(2.40, 0.18)
h = Element.new(12, 0.10)
n = Element.new(0.40, 0.03)
ca = Element.new(11, 0.015)
p = Element.new(4, 0.01)
k = Element.new(85, 0.0035)
s = Element.new(0.25, 0.0025)
cl = Element.new(0.15, 0.0015)
na = Element.new(7, 0.0015)

# Gets the input
pounds = ARGV[0].to_i
if pounds == 0
	print "How much do you weigh? "
	pounds = gets.chomp.to_i
end

# Declares all the useless things that should be replaced
elements = Hash.new
price = {o: 0.30, c: 2.40, h: 12.00, n: 0.40, ca: 11.00, p: 4.00, k: 85.00, s: 0.25, na: 7.00, cl: 0.15}
total = []

grams = pounds * 0.4536 * 1000 # Converts pounds to grams

elements[:o] = o.quantity_init(grams)
elements[:c] = c.quantity_init(grams)
elements[:h] = h.quantity_init(grams)
elements[:n] = n.quantity_init(grams)
elements[:ca] = ca.quantity_init(grams)
elements[:p] = p.quantity_init(grams)
elements[:k] = k.quantity_init(grams)
elements[:s] = s.quantity_init(grams)
elements[:cl] = cl.quantity_init(grams)
elements[:na] = na.quantity_init(grams)

elements.each do |element, value|
	value /= 100
	total.push(value * price[element])
end

puts "You are worth: $#{total.total.round(2)}"