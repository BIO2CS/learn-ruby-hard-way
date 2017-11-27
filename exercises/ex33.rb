def counter_loop(limit, step = 2)
  i = 0
  numbers = []

  while i < limit
    puts "At the top i is #{i}"
    numbers.push(i)

    i += step
    puts "Numbers now are: #{numbers}"
    puts "At the bottom i is #{i}"
    puts "#####################"
  end

  puts "The numbers: "
  numbers.each do |number|
    puts number
  end
end

counter_loop(20, 3)
