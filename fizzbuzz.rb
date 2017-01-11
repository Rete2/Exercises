
def fizzbuzz
  loopnr = 1
  while loopnr <= 100
    if loopnr % 3 == 0 && loopnr % 5 != 0
      puts "Fizz"
    elsif loopnr % 5 == 0 && loopnr % 3 != 0
      puts "Buzz"
    elsif loopnr % 5 == 0 && loopnr % 3 == 0
      puts "FizzBuzz"
    else
      puts loopnr
    end
    loopnr += 1
  end

end

fizzbuzz


#(1..100) --> Range (0...100) --> last number not included
#.map --> iterates through element
#[1,2,3,4][0] --> 1 it's the same as: array = [1,2,3,4] array[0]
