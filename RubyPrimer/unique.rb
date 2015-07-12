=begin
Given an Array, return the elements that are present exactly once in the array.
=end

def non_duplicated_values(values)
  values.select { |x| values.count(x) == 1 }
end