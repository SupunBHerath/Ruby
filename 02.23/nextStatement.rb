for i in 1..10
  next if i.even?  
  
  puts "Current number is #{i}"
end

puts "Loop Finished \n\n"


counter = 0

while counter < 10 
  counter += 1

  next if counter % 3 == 0

  puts "Counter is at #{counter}"  
end

puts "Loop Finished \n\n"

# Like continue in java
# Current number is 1
# Current number is 3
# Current number is 5
# Current number is 7
# Current number is 9
# Loop Finished


# Counter is at 1
# Counter is at 2
# Counter is at 4
# Counter is at 5
# Counter is at 7
# Counter is at 8
# Counter is at 10
# Loop Finished