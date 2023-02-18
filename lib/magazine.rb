class Magazine
    attr_reader :name, :category
    def initialize(name, category)
        @name = name
        @category = category
    end
   
end

# create name and category of music
the_pulse = Magazine.new("The Pulse", "Fashion")
puts the_pulse.name
puts the_pulse.category

the_pulse = Magazine.new("The Pulse Magazine", "Artwork")

puts the_pulse.name
puts the_pulse.category