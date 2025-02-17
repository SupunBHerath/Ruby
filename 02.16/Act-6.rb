print 'Enter Mark : '

mark = gets.chomp.to_i

if mark > 96
  puts 'A +'
elsif mark >=95
  puts 'A'
elsif mark >=92
  puts 'A-'
elsif mark >=87
  puts 'B+'
elsif mark >=85
  puts 'B'
elsif mark >=82
  puts 'B-'
elsif mark >=77
  puts 'C+'
elsif mark >=75
  puts 'C'
elsif mark >=72
  puts 'C-'
elsif mark >=67
  puts 'D+'
elsif mark >=65
  puts 'D'
elsif mark >=62
  puts 'D-'
else 
  puts 'F'
end  


