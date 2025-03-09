array = [10,20,30,40,50,60]

puts "Original Array : #{array}"

array.shift
puts "Modified Array : #{array}"

array.shift(2)
puts "Modified Array : #{array}"


# Original Array : [10, 20, 30, 40, 50, 60]
# Modified Array : [20, 30, 40, 50, 60]
# Modified Array : [40, 50, 60]