=begin
Quicksort with pivot as first element of from-to range
=end

def quickSort(arr,from,to)
    return if from >= to    
    pivot = arr[from]
    i = from
    for j in (1+from)..to
        if arr[j] < pivot
            i = i + 1
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        end 
    end
    arr[from] = arr[i]
    arr[i] = pivot
    quickSort(arr,from,i-1);
    quickSort(arr,i+1,to);
end


original_array=[2,19,5,4,3,14,2]
puts "Sorted Array Using Quick Sort:"
quickSort(original_array,0,original_array.length - 1)
p original_array