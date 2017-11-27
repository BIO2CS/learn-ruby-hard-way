puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "#{name} was born in #{2017 - age.to_i}"
