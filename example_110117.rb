def questions (x)
  puts "Tell me your #{x}"
  gets.chomp
end

puts "#{questions ("name")} - #{questions ("age")} - #{questions ("city")} - #{questions ("color")}"
