def questions (x)
  puts "Tell me your #{x}"
  gets.chomp
end

puts "#{questions ("name")} - #{questions ("age")} - #{questions ("city")} - #{questions ("color")}"

# name = questions ("name")
# age = questions ("age")
# city = questions ("city")
# color = questions ("color")


# puts "Tell me your name: "
#
# name = gets.chomp
#
# puts "Tell me your age: "
#
# age = gets.chomp
#
# puts "Tell me your city: "
#
# city = gets.chomp
#
# puts "Tell me your color: "
#
# color = gets.chomp
#
# puts "#{name} - #{age} - #{city} - #{color}"
