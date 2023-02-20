class Magazine
    attr_reader :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self
        @@all
    end
    def name=(new_name)
        @name = new_name
    end
    # def category
    #     @category = new_category
    #  end
    def contributors
        Article.all.select {|article|article.magazine == self}
        .map {|article| article.author}
        .uniq
    end
    def article_titles
        @articles.map(&:title)
    end
    def add_article(article)
        @articles << article
    end
    def self.find_by_name(name)
        all.find { |magazine| magazine.name == name }
    end

   
end

# create name and category of music
the_pulse = Magazine.new("The Pulse", "Fashion")
puts the_pulse.name
puts the_pulse.category

the_pulse = Magazine.new("The Pulse Magazine", "Artwork")

puts the_pulse.name
puts the_pulse.category

# create magazine
magazine1 = Magazine.new("Time", "News")
magazine2 = Magazine.new("The Pulse Magazine", "Artwork")

