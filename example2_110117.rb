5.times {puts "Let it snow"}                  #{} --> same as do...end for code in one line

puts ('a'..'z').to_a

('a'..'z').each_with_index do |object, index|
  if index.even?
    puts object.upcase
  else
    puts object
  end

end



# - Print 5 times a sentence
# - Print the alphabet
# - Print the alphabet, but for even index number print an uppercase letter
