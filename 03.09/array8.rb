array = [10,20,30,40,50,60]

puts "Accessing Elements Using the `index` Method : "
puts "Index of element 50 : #{array.index(50)}"
puts "Index of element 200 (not found) : #{array.index(200) || "Not found"}"

# Accessing Elements Using the index Method : 
# Index of element 50 : 4
# Index of element 200 (not found) : Not found