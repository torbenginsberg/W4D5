def first_anagram?(str1, str2)
    str1_arr = str1.split("")
    anagrams = str1_arr.permutation.to_a
    arr = []
    anagrams.each do |ele|
        return true if ele.join("") == str2
    end
    false
end


def second_anagram?(str1,str2)
    str1.each_char do |ele|
        idx = str2.index(ele)
        return false if idx == nil
        str2.slice!(idx)
    end
    if str2 != ""
        return false
    end
    true
end


def third_anagram?(str1, str2)
    str1.chars.sort_by(&:downcase).join == str2.chars.sort_by(&:downcase).join
end

def fourth_anagram?(str1, str2)
    str_hash = Hash.new(0)

    str1.each_char do |ele|
        str_hash[ele] += 1
    end

    str2.each_char do |ele|
        str_hash[ele] -= 1
    end

    str_hash.each do |key, val|
        if val != 0
            return false
        end
    end

    true
end