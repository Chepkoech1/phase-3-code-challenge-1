require 'pry'
class Magazine
    attr_reader :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @articles = []
        @@all << self
    end

    def self.all
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
        article.magazine = self
    end
    def self.find_by_name(name)
        all.find { |magazine| magazine.name == name }
    end

   
end

# # create name and category of music
# the_pulse = Magazine.new("The Pulse", "Fashion")
# puts the_pulse.name
# puts the_pulse.category

# the_pulse = Magazine.new("The Pulse Magazine", "Artwork")

# puts the_pulse.name
# puts the_pulse.category

# # create magazine
# magazine1 = Magazine.new("Time", "News")
# magazine2 = Magazine.new("The Pulse Magazine", "Artwork")

vogue = Magazine.new("Vogue","Fashion")
wired = Magazine.new("Wired", "Technology")

# adding some articles to the magazine
vogue_article = Article.new("Fashion Trends for 2023", "Jane Smith")
vogue.add_article(vogue_article)

wired_article = Article.new("The Future of AI", "John Doe")
wired.add_article(wired_article)

# list of all magazines
Magazine.all

# finding magazine by name

Magazine.find_by_name("Vogue")

# list of contributors
vogue.contributors

# list of article titles
vogue.article_titles

# category of magazine
vogue.category

# change the name of magazine
vogue.name = "Vogue UK"