def contains(arr, number)
    arr.each {
        |e| 
        if e == number 
            return true
        end  
    }
    return false
end

a = [1,2,3]

puts contains(a, 4)
puts contains(a, 2)