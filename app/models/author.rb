class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def add_articles(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end
  end

  # Returns an array of categories of the magazines for which the author has contributed to

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end
  end


end
