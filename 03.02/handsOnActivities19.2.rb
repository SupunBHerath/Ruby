# number from a user and calculate the sum of all numbers from 1 to a given number 
print "Enter the number "
num = gets.chomp.to_i

total = 0
(1..num).each do |i|
total = ( i * (i+1) ) /2
end

puts "Sum of 1 to #{num}  : #{total}" 