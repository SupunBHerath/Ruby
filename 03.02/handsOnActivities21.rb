# print reverse form number 

print "Enter the number "
num = gets.chomp.to_i
temp = num
while temp > 0
  lastDigit = temp % 10  
  print lastDigit  
  temp /= 10  
end

