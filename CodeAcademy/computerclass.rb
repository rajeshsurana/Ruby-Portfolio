=begin
Computer program which create new computer for each user.
=end
class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "New file #{filenamle} was created at #{time} by #{username}"
    end
    
    def Computer.get_users
        @@users
    end
end

my_computer = Computer.new("raj", "raj1")