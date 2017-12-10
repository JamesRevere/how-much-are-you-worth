# How Much Are You Worth?
# Have you ever wondered how much you would sell for if you were split up into your individual elements? Well, now you can!

# print "How much do you weigh? "
# weightLBS = gets.chomp.to_i

# elements = Hash.new

elements = {o: {price: 0.30}}
price = {o: 0.30, c: 2.40, h: 12.00, n: 0.40, ca: 11.00, p: 4.00, k: 85.00, s: 0.25, na: 7.00, cl: 0.15}
total = []

=begin
weightKGS = weightLBS * 0.4536
weightGMS = weightKGS * 1000

elements[:o] = weightGMS * 0.65
elements[:c] = weightGMS * 0.18
elements[:h] = weightGMS * 0.10
elements[:n] = weightGMS * 0.03
elements[:ca] = weightGMS * 0.015
elements[:p] = weightGMS * 0.01
elements[:k] = weightGMS * 0.0035
elements[:s] = weightGMS * 0.0025
elements[:cl] = elements[:na] = weightGMS * 0.0015

elements.each do |element, value|
	value /= 100
	total.push(value * price[element])
end

cost = 0
total.each do |value|
	cost += value
end

puts cost
=end

p elements[:o[:price]]