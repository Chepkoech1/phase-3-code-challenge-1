class Article
    attr_reader :author, :magazine, :title
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
    end
   
end


article = Article.new(sandra_bii, the_pulse)
puts article.author.name
