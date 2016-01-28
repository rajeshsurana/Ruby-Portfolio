=begin
Given an array of unique elements find out power set elements
=end

def powerSet(index, elements, current_subset, result=[])
	if index == elements.length
		result << current_subset
	else
		# Without element at index i
		powerSet(index+1, elements, current_subset, result)
		# With element at index i
		powerSet(index+1, elements, current_subset + [elements[index]], result)
	end
	result
end

arr = [1, 2, 3, 4, 5, 6]
p powerSet(0, arr, [])
