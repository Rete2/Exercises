puts "Please enter your PIN"
print "> "

def pincheck
  pin_correct = 1234
  loopnr = 1
  while (user_pin = gets.chomp.to_i) != pin_correct do        #do is not needed, to_i because pin_correct is an integer while gets.chomp gets a string
    puts "This PIN was not correct. Please enter again"
    puts "Try: no. #{loopnr}."
    if loopnr == 3
      break
    end
    loopnr += 1

  end

if user_pin == pin_correct
  puts "This is your bank information"
else
  puts "This was your last try"
end

end

pincheck
