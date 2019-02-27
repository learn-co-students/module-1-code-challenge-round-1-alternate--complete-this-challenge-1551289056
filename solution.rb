# Please copy/paste all three classes into this file to submit your solution!
class Article

  @@all = []

  attr_reader :author, :magazine
  attr_accessor :title

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


## ----------------------------------------------- ##

class Author

  attr_reader :name

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
    end.uniq
  end

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end
  end

end


## -------------------------------------------- ##

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
    self.all.find do |magazine|
      magazine.name == name
    end
  end

#Helper Function: Returns array of all articles for that magazine
  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

end
