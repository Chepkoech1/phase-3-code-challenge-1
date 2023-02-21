class Article
    attr_reader :author, :title
    attr_accessor :magazine
    
    @@all = []

    def initialize(author, title)
        @author = author
        @title = title
        @@all << self
    end
    def self.all
      @@all
    end
end

# puts Article.all
