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
  end
end


  def show_specialities
    self.articles.map do |article|
      article.magazine.category
    end
  end

end
