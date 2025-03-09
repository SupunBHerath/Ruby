array = [10,20,30,40,50,60]

puts "Original Array : #{array}"

array.unshift(1)
puts "Modified Array : #{array}"

array.unshift(1,2,3)
puts "Modified Array : #{array}"

# Original Array : [10, 20, 30, 40, 50, 60]
# Modified Array : [1, 10, 20, 30, 40, 50, 60]
# Modified Array : [1, 2, 3, 1, 10, 20, 30, 40, 50, 60]
