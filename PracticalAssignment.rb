# require 'prime'


begin 
  # 1--------------------------
  puts
  random_numbers_array = Array.new(20){rand(1..100)}
  puts "Array: #{random_numbers_array.inspect}"


  # 2-------------------------
  print "\nEnter a number t filter: "
  input_number = gets.chomp.to_i

  filtered_numbers = random_numbers_array.filter{|num| num > input_number}
  print "Number less than #{input_number}: "
  filtered_numbers.each do |num| 
      print "#{num}, "
  end  
  print "\b\b\n"

  def prime?(num)
    return false if num < 2
    (2..Math.sqrt(num)).none? { |i| num % i == 0 }
  end
  # prime_number = filtered_numbers.count{|num|Prime.prime?(num)} // need require 'prime'
  prime_number = filtered_numbers.count{|num| prime?(num)}
  puts "print count of prime numbers : #{prime_number}"


  # 3------------------------
  puts
  sorted_array = random_numbers_array.sort
  puts "Sorted Array (Ascending): #{sorted_array.inspect}"

  sorted_array = random_numbers_array.sort.reverse
  puts "Sorted Array (Descending): #{sorted_array.inspect}"

  puts
  print "Enter the number to search: "
  input_search = gets.chomp.to_i

  index_found = random_numbers_array.index(input_search)
  if index_found
    puts "Number #{input_search} found at index #{index_found}"
  else
    puts "Number #{input_search} not found"
  end

  # 4-----------------------------
  puts
  print "Enter a target number to replace: "
  target_number = gets.chomp.to_i
  print "Enter a replacement number: "
  replace_number = gets.chomp.to_i
  target_number_index = random_numbers_array.index(target_number)
  if target_number_index 
    random_numbers_array[target_number_index] = replace_number
    puts "Modified Array: #{random_numbers_array.inspect}"
  else
    puts "#{target_number} number not found"  
  end  

  # 5------------------------------
  puts
  total_value = 0
  random_numbers_array.each do |i|
    total_value += i
  end
  puts "Average of number: #{total_value /random_numbers_array.length}"
  puts "Maximum number: #{random_numbers_array.max}"
  puts "Minimum number: #{random_numbers_array.min}"


  # 6-------------------------
  puts
  print "(Bonus) Enter a number to find pairs that add up to it: "
  input_number_2 = gets.chomp.to_i

  random_numbers_array.each_with_index do |num1, index1|
    random_numbers_array.each_with_index do |num2, index2|
      if index1 < index2 && num1 + num2 == input_number_2
        puts "- #{num1} and #{num2} at indices #{index1} and #{index2}"
      end
    end
  end
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

rescue ArgumentError
  puts "Invalid input! Please enter a valid number."
end