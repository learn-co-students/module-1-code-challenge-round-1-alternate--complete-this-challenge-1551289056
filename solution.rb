# Please copy/paste all three classes into this file to submit your solution!
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

class Magazine

  @@all = []
  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def article_titles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

end

class Article
  @@all = []

  attr_reader :title, :author, :magazine

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
