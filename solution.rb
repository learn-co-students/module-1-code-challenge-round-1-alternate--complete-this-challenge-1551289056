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
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

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

class Article
  attr_accessor :title
  attr_reader :author, :magazine

  @@all = []

  def initialize(magazine, author, title)
    @magazine = magazine
    @author = author
    @title = title

    @@all << self
  end


  def self.all
    @@all
  end


end

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_article(title, magazine)
    Article.new(magazine, self, title)
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

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end
  end

  def self.all
    @@all
  end

end


