
print "Enter the number "
num = gets.chomp.to_i
count = 0
temp = num
while temp > 0
  count += 1
  temp = temp / 10
end

puts " Total Digits #{num} = #{count}"