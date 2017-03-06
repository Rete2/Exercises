# Exercises
# - Print a sentence 5 times
5.times {puts "Let it snow"}                  #{} --> same as do...end for code in one line

# - Print the alphabet
puts ('a'..'z').to_a

# - Print the alphabet, but for even index number print an uppercase letter
('a'..'z').each_with_index do |object, index|
  if index.even?
    puts object.upcase
  else
    puts object
  end
end
