class Magazine
    attr_reader :name, :category
    def initialize(name, category)
        @name = name
        @category = category
    end
   
end

the_pulse = Magazine.new("The Pulse", "Fashion")
puts the_pulse.name