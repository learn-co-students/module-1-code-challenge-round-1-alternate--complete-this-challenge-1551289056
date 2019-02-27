class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end
  end

  def show_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end

  def self.all
    @@all
  end

end
