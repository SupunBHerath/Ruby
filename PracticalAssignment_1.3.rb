# require 'prime' 

begin 
  # 1--------------------------
  puts
  random_numbers_array = Array.new(20) { rand(1..100) }
  puts "Array: #{random_numbers_array.inspect}"

  # 2-------------------------
  print "\nEnter a number to filter: "
  input_number = gets.chomp

  if input_number.between?(1, 100) && input_number.match?(/^\d+$/)
    filtered_numbers = random_numbers_array.filter { |num| num > input_number }
    print "Numbers greater than #{input_number}: "
    puts filtered_numbers.join(", ")

    def prime?(num)
      return false if num < 2
      (2..Math.sqrt(num)).none? { |i| num % i == 0 }
    end

    prime_count = filtered_numbers.count { |num| prime?(num) }
    puts "Count of prime numbers: #{prime_count}"
  else
    puts "Enter a number between 1 and 100"
  end  

  # 3------------------------
  puts
  puts "Sorted Array (Ascending): #{random_numbers_array.sort.inspect}"
  puts "Sorted Array (Descending): #{random_numbers_array.sort.reverse.inspect}"

  puts
  print "Enter the number to search: "
  input_search = gets.chomp.to_i

  if input_search.between?(1, 100)
    index_found = random_numbers_array.index(input_search)
    if index_found
      puts "Number #{input_search} found at index #{index_found}"
    else
      puts "Number #{input_search} not found"
    end
  else
    puts "Enter a number between 1 and 100"
  end 

  # 4-----------------------------
  puts
  print "Enter a target number to replace: "
  target_number = gets.chomp.to_i

  if target_number.between?(1, 100)
    print "Enter a replacement number: "
    replace_number = gets.chomp.to_i

    if replace_number.between?(1, 100)
      target_index = random_numbers_array.index(target_number)
      if target_index
        random_numbers_array[target_index] = replace_number
        puts "Modified Array: #{random_numbers_array.inspect}"
      else
        puts "#{target_number} not found"  
      end 
    else
      puts "Enter a replacement number between 1 and 100"
    end  
  else
    puts "Enter a target number between 1 and 100"
  end  

  # 5------------------------------
  puts
  total_value = random_numbers_array.sum
  puts "Average of numbers: #{(total_value.to_f / random_numbers_array.length).round(2)}"
  puts "Maximum number: #{random_numbers_array.max}"
  puts "Minimum number: #{random_numbers_array.min}"

  # 6-------------------------
  puts
  print "(Bonus) Enter a number to find pairs that add up to it: "
  input_number_2 = gets.chomp.to_i

  if input_search.between?(1, 100)
  
    found_pairs = false
    random_numbers_array.each_with_index do |num1, index1|
      random_numbers_array.each_with_index do |num2, index2|
        if index1 < index2 && num1 + num2 == input_number_2
          puts "- #{num1} and #{num2} at indices #{index1} and #{index2}"
          found_pairs = true
        end
      end
    end
    unless found_pairs
      puts "No pairs found."
    end
  else
    puts "Enter a target number between 1 and 100"
  end  

rescue ArgumentError
  puts "Invalid input! Please enter a valid number."
end  
