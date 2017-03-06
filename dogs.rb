# You are the owner of a dog daycare. Things are getting out of hand and you have to start organizing the group of dogs that you have on hand.
#You write a program to help you organize the dogs.
#For each dog you want to keep track of: breed, name, owner's name and if they are friendly
#The dogs can bark, eat, play or sleep.
#TASK 1: Write a program that has 4 different dogs. Each dog should perform one of the actions it can do.

class Dog
  attr_accessor :name, :breed, :owner, :friendly

  def initialize(name, breed, owner, friendly)
    @name = name        #instance Variables
    @breed = breed
    @owner = owner
    @friendly = friendly
  end

  def bark
    puts "Ruff!Ruff!"
  end

  def eat
    puts "#{@name} is eating."
  end

  def sleep
    puts "#{@name} is sleeping."
  end

  def play(dog)
    if @friendly && dog.friendly == 'friendly'
      puts "#{@name} plays with #{dog.name}"
    else
      puts "#{@name} and #{dog.name} are fighting."
    end
  end

  def bite(person)
    if person != "#{@owner}"
      puts "#{person} got bitten. Ouch!"
    else
      puts "#{person} pets #{@name}"
    end
  end

  def feed(food)
    if food == 'Pizza'
      puts "mhhhh, yammy"
    elsif food == "Carrot"
      puts "#{@name} doesn't eat #{food}"
    else
      puts "#{@name} isn't so sure about #{food}"
    end
  end

end

pookie = Dog.new('Pookie', 'Labrador', 'Tom', true )
aurelia = Dog.new('Aurelia', 'Pudel', 'Peter', false )
cher = Dog.new('Cher', 'unknown', 'Lisa', true )
fritz = Dog.new('Fritz', 'Husky', 'Lisa', false )

puts "Right now the dogs are:"
pookie.eat
aurelia.play(fritz)
cher.bark
fritz.sleep
pookie.bite('Tom')
cher.bite('Peter')
aurelia.feed('Carrot')
fritz.play(cher)
