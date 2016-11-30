puts "Please give me a number. "
puts ">"
n = gets.chomp

def loop1(n)
  loopnr = 0
  while n > 1 do        #do is not needed
    if n.even?
      n = n/2
    else
      n = 3*n+1
    end
    puts n
    loopnr += 1        # loopnr = loopnr + 1 --> counts the number
  end
  puts "The loop was repeated #{loopnr} times."
end

puts loop1(n)
