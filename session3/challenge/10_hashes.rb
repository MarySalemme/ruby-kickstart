# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


def pathify(paths = Hash.new) #default value
    
    return paths.map { |path| "/" + path} if paths.is_a? Array
    
    folder_structure = []
    paths.each do |parent_path,child_dirs|
        parent_path = "/" + parent_path
        child_paths = pathify child_dirs
        child_paths.each do |child_path|
            folder_structure << (parent_path + child_path)
        end 
        
        # if child_dir.is_a? Array
        #     filename = "/" + child_dir
        # elsif child_dir.is_a? Hash
        #     child_dir.each do |key, value|
                
        #     end
        # end 
        
    end
    
    folder_structure
    
end

p pathify 'usr' => {'bin' => ['ruby'] }