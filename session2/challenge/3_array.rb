# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    return self if self.empty?
    array = []
    self.split(//).each_with_index do |value, i| 
      if i.even?
        array.push(value)
      end
    end
    return array.join
  end
end











  
