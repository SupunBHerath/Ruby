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

  # 1---------------------------
  random_numbers_array = Array.new(15){rand(1..100)}

  puts "Array: #{random_numbers_array.inspect}"
  puts

  # 2------------------------------------
  
  input_number = get_valid_number("Enter a number to filter: ")
  odd_numbers_count = 0
  greater_found = false 
  print"Numbers greater than #{input_number}: "
  random_numbers_array.each do |num| 
    if num > input_number
      print "#{num}, "
      greater_found = true
      unless num % 2 == 0 
        odd_numbers_count += 1
      end 
    end  
  end
  if greater_found
    print "\b\b "
    puts "\nCount of odd numbers: #{odd_numbers_count}"
  else
    print "not found numbers"
  end

  # 3------------------------------------
  puts
  tem_array_sort = random_numbers_array.sort.reverse
  puts "Sorted Array (Descending): #{tem_array_sort.inspect}"
  puts
  search_number = get_valid_number("Enter a number to search: ")
  found_number = false
  tem_array_sort.each_with_index do |num, index|
    if num == search_number
      puts "Number #{search_number} found at index #{index}"
      found_number = true
    end  
  end

  unless found_number
      puts "Number #{search_number} is not found."
  end

  # 4----------------------------------------------
  puts
  loop do 
    target_number = get_valid_number("Enter a target number to replace: ") 
    target_number_index = random_numbers_array.index(target_number)

    if target_number_index 
      replace_number = get_valid_number("Enter the replacement number: ") 
      random_numbers_array[target_number_index] = replace_number
      puts "Modified Array: #{random_numbers_array.inspect}"
      break
    else
      puts "Number #{target_number} is not found."  
      puts
      next 
    end  
  end

  # 5-----------------------------------------
  puts
  total_sum = 0
  random_numbers_array.each do |num |
    if num % 3 == 0
    total_sum += num 
    end
  end  

  print "Sum of numbers divisible by 3: #{total_sum}"

  # 6------------------------------------------
  puts
  puts
  input_closest_number = get_valid_number("(Bonus) Enter a number to find the closest number: ")
  tem_array = random_numbers_array
  closest_number = tem_array[0]
  closest_index = 0
  min_difference = (input_closest_number - closest_number).abs
  
  tem_array.each_with_index do |num, index|
    difference = (input_closest_number - num).abs 
  
    if difference < min_difference
      closest_number = num
      closest_index = index
      min_difference = difference
    end
  end
  
  puts "Closest number: #{closest_number} at index #{closest_index}."

rescue StandardError => e 
  puts "Error: #{e} "
end


# output------------------------

# Array: [61, 92, 16, 4, 84, 12, 66, 55, 11, 36, 86, 97, 79, 36, 88]

# Enter a number to filter: 92
# Numbers greater than 92: 97  
# Count of odd numbers: 1

# Sorted Array (Descending): [97, 92, 88, 86, 84, 79, 66, 61, 55, 36, 36, 16, 12, 11, 4]

# Enter a number to search: 1
# Number 1 is not found.

# Enter a target number to replace: 92
# Enter the replacement number: 100
# Modified Array: [61, 100, 16, 4, 84, 12, 66, 55, 11, 36, 86, 97, 79, 36, 88]

# Sum of numbers divisible by 3: 234

# (Bonus) Enter a number to find the closest number: 66
# Closest number: 66 at index 6.