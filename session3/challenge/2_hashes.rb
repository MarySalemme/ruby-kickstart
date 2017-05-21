# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative 
#integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
    odd_keys_hash = Hash.new
    1.upto(int) do |i|
       if i.odd?
           odd_keys_hash[i] = staircase_array(i)
        end
    end
    odd_keys_hash
end

def staircase_array(num)
    even_nums = []
    (2..num).each do |num|
        even_nums << num if num.even?
    end
    even_nums
end

# p staircase 10