first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What's your name? "
name = $stdin.gets.chomp
print "How old are you? "
age = $stdin.gets.chomp

puts "Hi #{name}, you are #{age} years old."
