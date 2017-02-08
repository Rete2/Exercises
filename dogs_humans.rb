class Dog
  @@no_dogs=0           #global variable, don't use!!!!!
  attr_accessor :name, :breed, :owner, :friendly

  def initialize(name, breed, owner, friendly)
    @name = name        #instance Variables
    @breed = breed
    @owner = owner
    @friendly = friendly
  end

  # def name=(name)   #setter
  #   @name = name
  # end
  #
  # def name      #getter
  #   @name
  # end

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
