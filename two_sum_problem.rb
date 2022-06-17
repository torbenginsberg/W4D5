def bad_two_sum?(arr, target_sum) # O(n^2)
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele2, idx2|
            return true if idx2 > idx && ele + ele2 == target_sum
        end
    end
    false
end

def okay_bad_sum?(arr, target_sum)
    i = 0
    j = -1
    arr.each do |ele|
        curr_sum = arr[i] + arr[j]
        if curr_sum == target_sum
            return true
        elsif curr_sum > target_sum
            j -= 1
        elsif curr_sum < target_sum
            i += 1
        end
    end
    false
end