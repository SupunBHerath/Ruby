array = [10,20,30,40,50,60]

puts "Original Array : #{array}"

array[1..3]=[200,300,400]
puts "Modified Array : #{array}"

# Original Array : [10, 20, 30, 40, 50, 60]
# Modified Array : [10, 200, 300, 400, 50, 60]
