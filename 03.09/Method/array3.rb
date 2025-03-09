array = [10,20,30,40,50,60]

puts "Accessing Elements Useing the `fetch` Method  [10,20,30,40,50,60]  :"
puts "Elemenr at index 3 : #{array.fetch(3)}"
puts "Element at 10 index (with default) : #{array.fetch(10,"Out of bound")}"


# Accessing Elements Useing the `fetch` Method  [10,20,30,40,50,60]  :
# Elemenr at index 3 : 40
# Element at 10 index (with default) : Out of bound