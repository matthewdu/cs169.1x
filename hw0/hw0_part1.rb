# Define a method sum which takes an array of integers as an argument and
# returns the sum of its elements. For an empty array it should return zero.

def sum(array)
    sum = 0
    array.each{
        |x| sum += x
    }
    sum
end

# Define a method max_2_sum which takes an array of integers as an argument and
# returns the sum of its two largest elements. For an empty array it should
# return zero. For an array with just one element, it should return that
# element. 

def max_2_sum(array)
    if (array.size == 0)
        return 0
    end
    if (array.size == 1)
        return array[0]
    end
    
    sum = array[0] + array[1]
    for i in 0...(array.size-1)
        for j in i+1...array.size 
            if (array[i] + array[j]) > sum
                sum = array[i] + array[j]
            end
        end
    end
    
    sum
end

# Define a method sum_to_n? which takes an array of integers and an additional
# integer, n, as arguments and returns true if any two distinct elements in the
# array of integers sum to n. An empty array or single element array should both
# return false.

def sum_to_n?(array, n)
    if array.size == 0 || array.size == 1
        return false
    end
    
    for i in 0...array.size-1 
        for j in i...array.size 
            if (array[i] + array[j] == n)
                return true if(array[i] != array[j])
            else
                next
            end
        end
    end
    return false
end