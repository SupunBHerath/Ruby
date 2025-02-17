print 'Enter Mark: '

mark = gets.chomp.to_i

case mark
when 97..100
  puts 'A+'
when 93..96
  puts 'A'
when 90..92
  puts 'A-'
when 87..89
  puts 'B+'
when 83..86
  puts 'B'
when 80..82
  puts 'B-'
when 77..79
  puts 'C+'
when 73..76
  puts 'C'
when 70..72
  puts 'C-'
when 67..69
  puts 'D+'
when 63..66
  puts 'D'
when 60..62
  puts 'D-'
else
  puts 'F'
end
