# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end
  def say(message)
    "*~* #{message} *~*"
  end
end

uni = Unicorn.new("Leo")
p uni
puts uni.say("PAIN")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end
  def drink
    @thirsty = false
  end
end

dracula = Vampire.new("Dracula")
p dracula
puts dracula.pet
puts dracula.thirsty
dracula.drink
puts dracula.thirsty

alucard = Vampire.new("Alucard", "wolf")
p alucard


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  attr_reader :is_hungry, :times_eaten
  def initialize(name, rider, color)
    @times_eaten = 0
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end

  def eat
    @times_eaten += 1
    if @times_eaten >= 4
      @is_hungry = false
    end
  end
end

ventus = Dragon.new("Ventus", "Will", "Green")
p ventus
puts ventus.is_hungry, ventus.times_eaten
ventus.eat
puts ventus.is_hungry, ventus.times_eaten
ventus.eat
ventus.eat
ventus.eat
puts ventus.is_hungry, ventus.times_eaten



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition, age = 0)
    @name = name
    @dispositon = disposition
    @age = age

    @is_adult = false
    if @age >= 33
      @is_adult = true
    end

    @is_old = false
    if @age >= 101
      @is_old = true
    end

    @has_ring = false
    if @name == "Frodo"
      @has_ring = true
    end
  end

  def celebrate_birthday
    @age += 1
    if @age >= 101
      @is_old = true
    end
    if @age >= 33
      @is_adult = true
    end
  end
end

sam = Hobbit.new("Sam", "Loyal", 100)
p sam
sam.celebrate_birthday
p sam
frodo = Hobbit.new("Frodo", "Adventerous", 32)
p frodo
frodo.celebrate_birthday
p frodo
pippen = Hobbit.new("Pippen", "Foolish")
p pippen
