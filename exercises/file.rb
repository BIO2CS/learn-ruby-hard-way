# mode = "r+"
# file = File.open("test.txt", mode)
# puts file.inspect
# puts file.read
# file.close

what_am_i = File.open("test.txt", "w") do |file|
  file.puts "Call me Joan."
end

p what_am_i

File.open("test.txt", "r") do |file|
  puts file.read
end
