# ex42.rb
###########################################
## Animal is-a object
class Animal
  def makes_sound
    puts "Grrrrrrrrrrr"
  end

end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end

  def makes_sound
    puts "Bow-wow"
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end

  def makes_sound
    puts "Meoooooooooow"
  end

end

## Person is-a Object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name
    ## Person has-a pet of some kind
    @pet = nil
  end
  attr_accessor :pet

end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## Employee inherits the name from Person
    super(name)
    ## Emplyee has-a salary
    @salary = salary
  end

end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is a Person
mary = Person.new("Mary")

## mary has-a Pet Cat satan
mary.pet = satan
satan.makes_sound

## frank is-a Employee, has-a name Frank, has-a salary 120000
frank = Employee.new("Frank",120000)

## frank has-a Pet Dog rover
frank.pet = rover
rover.makes_sound













###########################################################################
## Fish is-a Object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## flipper is-a Fish
flipper = Fish.new()

## crouse is a Salmon
crouse = Salmon.new()

## harry is a Halibut
harry = Halibut.new()