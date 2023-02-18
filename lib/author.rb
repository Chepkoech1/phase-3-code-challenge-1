class Author
    attr_reader :name
    def initialize(name)
        @name = name
    end

end

sandra_bii = Author.new("Sandra Bii")
puts sandra_bii.name

