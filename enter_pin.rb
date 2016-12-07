puts "Please enter your PIN"
print "> "

def pincheck
  pin_correct = 1234
  while gets.chomp.to_i != pin_correct do        #do is not needed, to_i because pin_correct is an integer while gets.chomp gets a string
    puts "This PIN was not correct. Please enter again"
  end
  puts "Bank account information..."

end

pincheck
