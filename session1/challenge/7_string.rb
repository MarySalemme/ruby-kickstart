# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    ary = string.split(//)
    ary2 = []
    ary.each_with_index do |element, index|
        if (element.downcase == "r" && index < ary.length - 1)
            ary2 << ary[index + 1]
        end
    end
    ary2.join
end
