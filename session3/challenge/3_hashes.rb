# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}


def word_count(str)
    word_recurrence = {}
    words = str.downcase.gsub(/[[:punct:]]/, "").split
    words.each do |word| 
        word_recurrence[word] = words.count(word) 
    end
    word_recurrence
end




p word_count "The dog!! and, the cat."