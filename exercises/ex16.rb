filename = ARGV.first

puts "We'are going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

formatter = "%{first}\n%{second}\n%{third}\n"

text = formatter % {
  first: line1,
  second: line2,
  third: line3
}

target.write(text)
puts text

puts "And finally, we close it."

target.close

################
# file = open(filename)
# puts "Here is your file #{filename}"
# print file.read
# file.close
