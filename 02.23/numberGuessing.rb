secret_number = 8
attempts = 0

puts "Welcome to the Number Guessing Game!"
puts "Guess a number between 1 and 10"

loop do  
  attempts += 1
  print "Attempt #{attempts}: Enter your guess: "
  guess = gets.chomp 

  break if attempts == 10 
  
  unless guess.match?(/^\d+$/)
    puts "Invalid inputs ! Please enter a number"
   next
  end  

  guess = guess.to_i  

  if guess == secret_number
    puts "Congratulations! You guessed the secret number in #{attempts} attempts."
    break  
  elsif guess < secret_number
    puts "Too low! Try again."
  else
    puts "Too high! Try again."
  end
  
end

puts "\nGame Over! Thanks for playing."



