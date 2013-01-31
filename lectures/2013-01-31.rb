require 'pry'

class Animal
  def speak
    puts "I am an animal"
  end
end

module A
  def stuff1
    puts "this is stuff1"
  end
  def stuff2
    puts "this is studff2"
  end
end

module B
  def temp1
    puts "temp1"
  end
  def temp2
    puts "temp2"
  end
end


class Person < Animal
  include B
  include A
  attr_accessor :age, :name, :gender
  def initialize(age, gender, name)
    @age = age
    @gender = gender
    @name = name
  end

  def age=(age)
    @age = age #(@age is an instance variable)
  end
  def to_s #this overrides the default to_s function
    "#{@name} is a #{@age} year old #{@gender}."
  end
  def Person.speak #this is a class method
    puts "I am a person class"
  end
end

  # def age
  #   @age
  # end

  # def name= (name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  # def gender= (gender)
  #   @gender = gender
  # end

  # def gender
  #   @gender
  # end

# end

binding.pry
