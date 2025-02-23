(1..3).each do |i|
  (1..3).each do |j|
    puts "i : #{i} , j :#{j}"
  end
end   
  
puts "\n\n"

(1..5).each do |i|
  (1..i).each do |j|
    print "* "
  end
  puts
end  

# Equivalent Java Code Using for-each Loop


# i : 1 , j :1
# i : 1 , j :2
# i : 1 , j :3
# i : 2 , j :1
# i : 2 , j :2
# i : 2 , j :3
# i : 3 , j :1
# i : 3 , j :2
# i : 3 , j :3


# *
# * *
# * * *
# * * * *
# * * * * *