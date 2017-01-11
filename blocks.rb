#ITERATORS: .each, .map, .select, .collect # call an iterator on an enumerator

[1, 2, 3, 4, 5].each do |number|
 puts "#{number} was passed to the block"
end

[1, 2, 3, 4, 5].each { |number| puts "#{number} was passed to the block" } # {} is a replacement for "do...end"

#.each iterates and interates over itself
#.map transforms the array that it's called on, returns an array with the same
#.collect ---> same as map
#.select --> takes the block
[1,2,3,4].select do |element|
  element.even?
end
# --> select is like a conditional which returns the elements for which the condition is true

[1,2,3].collect do
  2
end
--> returns [2,2,2]
