=begin
In this project, we'll combine control flow with a few new Ruby string methods to Daffy Duckify a user's string, replacing each "s" with "th"
=end
puts "Thtring Pleathe:"
user_input = gets.chomp
if user_input === ""
    puts "Please enter valid string:"
    user_input = gets.chomp
end
user_input.downcase!
user_input.capitalize!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    puts "String does not include 's'"
end

puts "Your string is: #{user_input}"