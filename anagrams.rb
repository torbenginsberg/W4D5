def first_anagram?(str1, str2)
    str1_arr = str1.split("")
    anagrams = str1_arr.permutation.to_a
    arr = []
    anagrams.each do |ele|
        return true if ele.join("") == str2
    end
    false
end

p first_anagram?("cat", "art")