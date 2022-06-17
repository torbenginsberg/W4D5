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
    i = 0
    j = 0
