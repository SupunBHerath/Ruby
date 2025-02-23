for i in 1..10
  puts "Current number is #{i}"
  break if i == 5
end

puts "\n Loop exited with break !\n\n"


# ----Output------

# Current number is 1
# Current number is 2
# Current number is 3
# Current number is 4
# Current number is 5

#  Loop exited with break !


for i in 1..5
  puts "Outer loop : i = #{i}"

  for j in 1..5 
    puts "Inner loop : j = #{j}"

    if i *j >= 6
      puts "Breaking out of both loop because i*j = #{i*j}"
      break
    end
  end 

    break if i * j >= 6
end

puts "Loop exited with break! "  