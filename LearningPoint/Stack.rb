=begin
Stack using array
=end

class Stack
	def initialize
		@elements = []
	end

	def length
		@elements.length
	end

	def push(num)
		@elements.push num
	end

	def pop
		@elements.pop
	end

	def peek
		@elements[-1]
	end

	def display
		puts "Oldest element: #{ @elements.join("<--")} :Newest element"
	end
end

stack = Stack.new
stack.push(30)
stack.push(60)
stack.display
p "Pop: #{stack.pop}"
stack.display
stack.push(10)
stack.push(3)
stack.display
p "Length: #{stack.length}"
p "Peek: #{stack.peek}"
stack.display