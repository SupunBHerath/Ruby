puts "1.Literal Notation :"
array_literal = [1,2,3,4,5]
puts "Array Create useing literal notion : #{array_literal.inspect}"
puts

puts "2.Using Array.new:"
array_new_default = Array.new(3)
array_new_with_value = Array.new(3,"default")
puts "Array with default values  : #{array_new_default.inspect}"
puts "Array with specified default values  : #{array_new_with_value.inspect}"
puts


puts "3. Using %w Notation :"
array_percent_w= %w(apple banana cherry)
puts "Array Create useing %w notation : #{array_percent_w.inspect}"
puts