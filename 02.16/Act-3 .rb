print 'Enter your number : '

number = gets.chomp.to_i

unless number % 2 == 0
  puts 'This Number is Odd'
else
  puts 'This Number is Even'

end
