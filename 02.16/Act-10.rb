print 'Enter A Number: '
a = gets.chomp.to_i
print 'Enter B Number: '
b = gets.chomp.to_i
print 'Enter C Number: '
c = gets.chomp.to_i
print 'Enter D Number: '
d = gets.chomp.to_i
print 'Enter E Number: '
e = gets.chomp.to_i

maxNumber = a

if b > maxNumber
  maxNumber = b
end
if c > maxNumber
  maxNumber = c
end
if d > maxNumber
  maxNumber = d
end
if e > maxNumber
  maxNumber = e
end

puts "The maximum number is: #{maxNumber}"
