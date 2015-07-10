=begin
Two way sort. if second parameter is true then alphabetize sort the array in descending order otherwise in ascending order. 
=end
def alphabetize(arr, rev=false)
    arr.sort!
    if rev
        return arr.reverse!
    else
        return arr
    end
end

numbers = [3, 6, 4, 8, 1]

puts "#{alphabetize(numbers)}"