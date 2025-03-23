begin
def get_valid_number(prompt)
  loop do
    print prompt
    input = gets.chomp

    unless input.match?(/^\d+$/)
      puts "\nError: Non-numeric values are not allowed."
      puts
      next
    end

    number = input.to_i

    if number < 1 || number > 100
      puts "\nError: Enter a number between 1 and 100."
      puts
      next
    end

    return number 
  end
end

# 1-------------

random_numbers_array = Array.new(10){rand(1..100)}

puts "Array: #{random_numbers_array.inspect}"
puts
search_number = get_valid_number("Enter a number to search: ")
found_number = false
  random_numbers_array.each_with_index do |num, index|
    if num == search_number
      puts "Number #{search_number} found at index #{index}"
      found_number = true
    end  
  end

  unless found_number
    puts "Number #{search_number} is not found"
  end
  
# 2---------------
puts
even_numbers_count = 0
print"Numbers greater than 50: "
random_numbers_array.each do |num| 
  print "#{num}, "
  if num % 2 == 0 
    even_numbers_count += 1
  end  
end
print "\b\b "   
puts "\nCount of even numbers: #{even_numbers_count}"

# 3-----------
puts
input_number = get_valid_number("Enter a number between 1 and 100: ")
numbers_found = false
if input_number >= 50
print"Numbers greater than #{input_number}: "
  random_numbers_array.each do |num|
    if num >= input_number
      print "#{num}, "
    numbers_found = true
    end
  end
else 
  print"Numbers less than #{input_number}: "
  random_numbers_array.each do |num|
    if num < input_number
      print "#{num}, " 
      numbers_found = true
    end
  end
end
if numbers_found
  print "\b\b "
else
  print "not found numbers"
end

# 4-----------
puts
tem_array = random_numbers_array
puts "\nSorted Array: #{tem_array.sort}"
puts "Reversed Array: #{tem_array.sort.reverse}"

# 5---------------
puts
loop do 
  target_number = get_valid_number("(Bonus) Enter a number to replace: ") 
  target_number_index = random_numbers_array.index(target_number)

  if target_number_index 
    replace_number = get_valid_number("Enter the replacement number: ") 
    random_numbers_array[target_number_index] = replace_number
    puts "Modified Array: #{random_numbers_array.inspect}"
    break
  else
    puts "#{target_number} number not found."  
    puts
    next 
  end  
end

rescue StandardError => e 
  puts "Error: #{e} "
end



# output with error handle ---------------------------

# Array: [3, 59, 21, 10, 23, 78, 34, 65, 60, 37]

# Enter a number to search: 78
# Number 78 found at index 5

# Numbers greater than 50: 3, 59, 21, 10, 23, 78, 34, 65, 60, 37  
# Count of even numbers: 4

# Enter a number between 1 and 100: 101

# Error: Enter a number between 1 and 100.

# Enter a number between 1 and 100: supun

# Error: Non-numeric values are not allowed.

# Enter a number between 1 and 100: 100
# Numbers greater than 100: not found numbers

# Sorted Array: [3, 10, 21, 23, 34, 37, 59, 60, 65, 78]
# Reversed Array: [78, 65, 60, 59, 37, 34, 23, 21, 10, 3]

# (Bonus) Enter a number to replace: 3 
# Enter the replacement number: 100