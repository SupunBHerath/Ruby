# print reverse form number 

print "Enter the number "
num = gets.chomp.to_i

total = 0

for i in 1..num
   print " ("
  (1..i).each do |j|
    print " #{j} + "
    total += i
  end  
  print " \b\b\b) + "

end

print "\b\b= #{total}"

#   ( 1 ) +  ( 1 +  2 ) +  ( 1 +  2 +  3 ) +  ( 1 +  2 +  3 +  4 ) +  ( 1 +  2 +  3 +  4 +  5 ) = 55