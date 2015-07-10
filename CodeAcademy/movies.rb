=begin
Create a movie hash and take user input to add, update, display or delete any movie from hash.
=end
movies = {
    run: 4,
    yuva: 4,
    cars: 5,
    wed: 2
    }
puts "Enter your Choice"
puts "'add', 'update', 'display', or 'delete':"
choice = gets.chomp.downcase

case choice
when "add"
    puts "What is the name of movie?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is the rating of movie?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "'#{title}' is added with rating '#{rating}'"
    else
        puts "'#{title}' movie already exists!"
    end
when "update"
    puts "What is the name of movie?"
    title = gets.chomp  
    if movies[title.to_sym].nil?
        puts "'#{title}' movie does not exists!"
    else
        puts "What is the rating of movie?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "'#{title}' is updated with rating '#{rating}'"
    end
when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
when "delete"
    puts "What is the name of movie?"
    title = gets.chomp 
    if movies[title.to_sym].nil?
        puts "'#{title}' movie does not exists!"
    else
        movies.delete(title.to_sym)
        puts "'#{title}' is deleted"
    end
else
    puts "Please enter valid choice."
end