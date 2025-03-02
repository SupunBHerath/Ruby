# numbers from 0 to 6 except 3 and 6 
(0...6).each do |i|
 next  if i == 3 
 puts "#{i}"

end