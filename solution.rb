#Author Class
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


#Article
class Article

  attr_reader :author, :magazine
  attr_accessor :title

  @@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine

    @@all << self
  end

  def self.all
    @@all
  end


end

#Magazine Class
class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.find do |mag|
      mag.name == name
    end
  end

  def find_articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    self.find_articles.map do |article|
      article.title
    end
  end


end
