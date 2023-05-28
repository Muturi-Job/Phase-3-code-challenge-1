class Author
    attr_reader :name
    def initialize(name)
        @name = name
        @articles = []
    end

    def articles
        @articles.dup
    end

    def magazine
        @articles.map(&:magazine).uniq
    end

    def add_article(magazine, title)
        article = Article.new(self, magazine, title)
        @article << article
    end

    def topic_areas
        magazines.map(&:category).uniq
    end
end