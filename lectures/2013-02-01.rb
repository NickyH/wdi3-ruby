require 'pry'


# begin
#   print "What do you want to divide by? "
#   number = gets.to_i
#   puts "The result of 3 div 0 is #{3/number}"
# rescue
#   puts "Wow you're code just exploded"
#   retry
# ensure
#   puts "I need to make sure this is run..."
# end

# begin
#   puts "This code is highly volatile"
#   raise "Boom!"
# rescue
#   puts "That wa s abad explosion"
# end

f = File.new('database.txt', 'a+')

print "write info to file (y/n): "
response = gets.chomp.downcase
while response == 'y'
  print "Enter name, age, gender: "
  f.puts gets.chomp

  print "write name to file (y/n): "
  response = gets.chomp.downcase
end

f.close

class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
  def to_s
  "#{@name} is a #{@age} year old #{@gender}."
  end
end

f = File.new('database.txt', 'r')
people = []

f.each do |line|
  person_array = line.split(', ')
  person = Person.new(person_array[0], person_array[1], person_array[2])
  people << person
end
f.close



people.each do |person|
  puts "The person is: #{person}"
end