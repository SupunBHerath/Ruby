counter = 0 

while counter < 5
  counter += 1
  puts "Count is at #{counter}"

  print "Do you want to redo? (yes/no): "
  answer = gets.chomp.downcase

  redo if answer == "yes" 

end

puts "\nLoop finished"
