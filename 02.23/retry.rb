attempts = 0

begin 
  attempts += 1
  puts "Attempt #{attempts} : Enter a positive number :"
  number = gets.chomp.to_i

  raise "Invalid inputs ! the number must be positive. " if number <= 0

  puts "You entered : #{number}"

rescue => e
  puts e.message
  retry if attempts < 3
end 

puts "Program finished"
