array = [10,20,30,40,50,60]

puts "Accessing a Range of Elements (Slicinp) : "
puts "Element from index 2 to 5 : #{array[2..5].inspect}"
puts "Element from index 2 to 5 (exclusive) : #{array[2...5].inspect}"
puts "First 5 elements  : #{array[0..4].inspect}"
puts "Last 3 elements : #{array[-3..-1].inspect}"


# Accessing a Range of Elements (Slicinp) : 
# Element from index 2 to 5 : [30, 40, 50, 60]
# Element from index 2 to 5 (exclusive) : [30, 40, 50]
# First 5 elements  : [10, 20, 30, 40, 50]
# Last 3 elements : [40, 50, 60]
