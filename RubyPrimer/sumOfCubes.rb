=begin
Compute the sum of cubes for a given range a through b.
=end
def sum_of_cubes(a, b)
  sum = 0
  (a..b).to_a.each {|num| sum = sum + num*num*num}
  sum
end