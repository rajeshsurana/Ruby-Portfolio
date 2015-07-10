=begin
Create a small program that will read a user's input and correct his or her capitalization. 
=end
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city you are from?"
city = gets.chomp
city.capitalize!

print "What State you are from? Please enter abbreviation."
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you live at #{city}, #{state}."