array = [10,20,30,40,50,60]

puts "Accessing Elements Using the `first` and `last` Methods : "
puts "First element     : #{array.first}"
puts "Last element      : #{array.last}"
puts "First 3  elements : #{array.first(3).inspect}"
puts "Last 3 elements   : #{array.last(3).inspect}"

# Accessing Elements Using the `first` and `last` Methods : 
# First element     : 10
# Last element      : 60
# First 3  elements : [10, 20, 30]
# Last 3 elements   : [40, 50, 60]