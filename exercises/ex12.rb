print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "How much did you spend on lunch? "
cost = gets.chomp.to_f
puts "You spent #{cost} on lunch and the tip is #{cost * 0.15}."
