require "byebug"
def bad_my_min(arr) # n^2
    min = 0
    arr.each do |ele|
        arr.each do |ele_0|
            if ele < ele_0
                min = ele
            else 
                break
            end
        end
    end
    min
end


def my_min(arr) #n
    smallest = arr[0]
    i = 1
    while i < arr.length 
        if arr[i] < smallest
            smallest = arr[i]
        end
        i += 1
    end
    smallest
end


def largest_contiguous_subsum_1(arr)#n^2
    i = 0
    big_arr = []
    while i < arr.length
        j = i
        while j < arr.length
            big_arr << arr[i..j]
            j += 1
        end
        i += 1
    end
    biggest = big_arr[0].inject {|acc, ele| acc += ele}
    big_arr.each do |ele| #n
        if biggest < ele.inject {|acc, ele| acc += ele}
            biggest = ele.inject {|acc, ele| acc += ele}
        end
    end
    biggest
end


def largest_contiguous_subsum_2(arr)
    # i = 0
    # j = 1
    # big_arr = arr[i..j].inject {|acc, ele| acc += ele}
    # while i < arr.length
    #     k = arr[i..j].inject {|acc, ele| acc += ele}
    #     big_arr = k if k > big_arr
    #     if j != (arr.length - 1)
    #         j += 1
    #     else
    #         i += 1
    #     end
    # end

    # arr.each do |ele|
    #     big_arr = ele if ele > big_arr
    # end
    # big_arr

    largest_sum = arr[0]
    current_sum = 0
    arr.each do |ele|
        current_sum += ele
        if current_sum > largest_sum
            largest_sum = current_sum
        elsif current_sum < 0
            current_sum = 0
        end
    end
    largest_sum
end
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_2(list) # => -1 (from [-1])
