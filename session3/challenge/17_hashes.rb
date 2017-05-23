# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
#  head   # >> "1\n2\n"

def print_list_in_reverse(linked_list)
    return unless linked_list
    print_list_in_reverse linked_list[:next]
    puts linked_list[:data]
end

head = {:data => 1, :next => nil}
p print_list_in_reverse head