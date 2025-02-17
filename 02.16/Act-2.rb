print 'Enter your number : '

number = gets.chomp.to_f

if number < 0
  puts "#{number} is Negative"
elsif number > 0
  puts "#{number} is Positive"
else
  puts 'Number is Zero'
end
