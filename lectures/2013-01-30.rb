require 'pry'
require 'pry-debugger'

print "Enter a number: "
number = gets.to_i
number = number * number
puts "The squared number is #{number}"

print "Enter your first name"
first = gets.chomp
print "Last"
last = gets.chomp
last = last.upcase
bining.pry
puts "Your full name is #{first} #{last}"
