class Animal
  def make_sound(name)
    puts "I am an #{name}"
  end
end

class Dog < Animal
  def initialize(name)
    @name = name
  end

  def make_sound
    super("dog")
    puts "Woof Woof"
  end
end

class Cat < Animal
  def initialize(name)
    @name = name
  end

  def make_sound
    super("cat")
    puts "Meow Meow"
  end
end

class Person
  def initialize(name)
    @name = name
    @pet = nil
  end

  attr_accessor :pet
  attr_reader :name
end

class Employee < Person
  def initialize(name, salary)
    super(name)
    @salary = salary
  end
  attr_reader :salary
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")
rover.make_sound
satan = Cat.new("Satan")
satan.make_sound
mary = Person.new("Mary")
mary.pet = satan

frank = Employee.new("Frank", 120000)
frank.pet = rover

puts "frank's name is #{frank.name}, frank's salary is #{frank.salary}"
