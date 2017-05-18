# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def birthday
        @age += 1
    end
end

# nino = Person.new("Nino", 25)
# nino.get_name
# nino.get_age
# nino.birthday
# nino.birthday
# nino.birthday