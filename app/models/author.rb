class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  def show_specialties
    self.articles.map do |article|
      article.magazine.category
    end.uniq
  end

  def self.all
    @@all
  end

end
