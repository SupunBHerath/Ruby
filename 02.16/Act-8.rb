print 'Enter BMI: '

bmi = gets.chomp.to_f

case bmi
when 0...18.5
  puts "#{bmi} Underweight"
when 18.5..24.9
  puts "#{bmi} Normal weight"
when 25..29.9
  puts "#{bmi} Overweight"
when 30.0..34.9
  puts "#{bmi} Obesity (class I)"
when 35..39.9
  puts "#{bmi} Obesity (class II)"
else
   puts "#{bmi} Obesity (class III)"
end