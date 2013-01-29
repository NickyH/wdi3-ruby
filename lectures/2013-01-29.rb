=begin
=begin
print "What is your first name? "
first = gets.chomp
puts "You just typed #{first}"
print "What is your last name? "
last = gets.chomp
puts "Your last name is #{last}"
puts "Your full name is #{first} #{last}"
print "What's your address? "
address = gets.chomp
full_name = first + " " + last
puts "Your full name is #{full_name} and you live at #{address}"

print "What is your age? "
age = gets.chomp.to_i
if age >= 21
  puts "You can drink"
else
  puts "You can't drink"
end=end
=end


# print "Which borough do you live in?"
# place = gets.chomp.downcase
# case place
#   when "manhattan"
#     puts "Baller"
#   when "brooklyn"
#     puts "Hipster"
#   when "queens"
#     puts "Sad"
#   when "bronx"
#     puts "WTF"
#   when "staten island"
#     puts "What?"
# end

# puts "What is 2 to the 16th power? #{2**16}"
# answer = gets.chomp.to_i
# while answer != 2**16
#   puts "Try again"
#   answer = gets.chomp
# end
# puts "That's correct!"

def area(length, width)
  length * width
end

def vol(length, width, height)
  length*width*height
end

def square(x)
  x*x
end

def cube(x)
  x**3
end

def name_tag_generator(first, last, gender, age)
  if gender == 'f'
    if age < 19
    puts "Miss #{first} #{last}"
  else puts "Ms #{first} #{last}"
  end
  else
    puts "Mr #{first} #{last}"
  end
end


