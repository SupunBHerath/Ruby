array = [10,20,30,40,50,60]

puts "Original Array : #{array}"

array.pop
puts "Modified Array : #{array}"

array.pop(2)
puts "Modified Array : #{array}"


# Original Array : [10, 20, 30, 40, 50, 60]
# Modified Array : [10, 20, 30, 40, 50]
# Modified Array : [10, 20, 30]