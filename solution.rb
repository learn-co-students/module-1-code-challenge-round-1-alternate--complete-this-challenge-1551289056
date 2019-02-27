# Please copy/paste all three classes into this file to submit your solution!
##ARTICLE CLASS
class Article
attr_reader :title, :author, :magazine
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

##AUTHOR CLASS
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
    Article.all.select do |instance|
      instance.author == self
    end
  end

  def magazines
    author_magazines = []
    self.articles.each do |instance|
      author_magazines << instance.magazine
    end
    author_magazines
  end

  def show_specialties
    categories = []
    self.magazines.each do |instance|
      categories << instance.category
    end
    categories.uniq
  end

end

##MAGAZINE CLASS
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
    first_magazine = []
    one_article = Article.all.find {|instance| instance.magazine.name == name}
    first_magazine << one_article.magazine
    first_magazine
  end

  def article_titles
    titles_by_mag = []
    select_articles = Article.all.select {|instance| instance.magazine == self}
    select_articles.each do |instance|
      titles_by_mag << instance.title
    end
    titles_by_mag
  end

end
