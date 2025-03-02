# multiples three print "Fizz" , multiples five print "Buzz" , 3 and 5 print "FizzBuzz" 
(0..50).each do |i|

 if i % 3 == 0 && i % 5 == 0
  puts "FizzBuzz"
 elsif i % 3 ==0
  puts "Fizz"
 elsif i % 5 == 0
  puts "Buzz"
 else 
  puts i 
 end 

end