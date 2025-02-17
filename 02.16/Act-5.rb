print 'Enter your number : '

number = gets.chomp.to_i

case number
when 0..10
  puts 'blue'
when 10..20
  puts 'red'
when 20..30
  puts 'green'
else
  puts 'not a correct color'
end
