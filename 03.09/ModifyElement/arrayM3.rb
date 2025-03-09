array = [10,20,30,40,50,60]

puts "Original Array : #{array}"

array.push(40)
array << 50
puts "Modified Array : #{array}"

# Original Array : [10, 20, 30, 40, 50, 60]
# Modified Array : [10, 20, 30, 40, 50, 60, 40, 50]
