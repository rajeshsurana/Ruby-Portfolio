=begin
Queue using array
=end
class Queue
	def initialize
		@elements = []
	end

	def enqueue(num)
		@elements.push num
	end

	def dequeue
		@elements.shift
	end

	def length
		@elements.length
	end

	def display
		p "Oldest element: #{@elements.join("<--")} :Newest element"
	end
end

q = Queue.new 
p "Enqueuing 10 #{q.enqueue 10}"
p "Enqueuing 20 #{q.enqueue 20}"
p "Enqueuing 30 #{q.enqueue 30}"
p "Enqueuing 40 #{q.enqueue 40}"
p "Length: #{q.length}"
p "Dequeuing #{q.dequeue}"
p "Length: #{q.length}"
q.display
