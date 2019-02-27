# Please copy/paste all three classes into this file to submit your solution!

##AUTHOR CLASS ##
class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  #Given a title (as a string) and a magazine (as object), this method creates a new Article instance and associates w/author
  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  #Returns an array of Article instances the author has written
  def articles
    Article.all.select {|article| article.author ==self}
  end

  #Returns an array of Magazine instances for which the author has contributed to
  def magazines
    Article.all.select {|article| article.author==self}.map {|article| article.magazine}
  end

  #Returns an array of categories of the magazines for which the author has contributed to
  def show_specialties
    self.magazines.map {|magazine| magazine.category}
  end

  def self.all
    @@all
  end
end

##ARTICLE CLASS ##

class Article
    attr_reader :title, :author, :magazine

    @@all = []

    def initialize(title,author,magazine)
      @title = title
      @author = author
      @magazine = magazine

      @@all << self
    end

    def self.all
      @@all
    end
end


##MAGAZINE CLASS ##
class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  #Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(magazine_name)
    self.all.find {|magazine| magazine.name == magazine_name}
  end

  #Returns an array of the titles of all articles written for that magazine
  def article_titles
    Article.all.select {|article| article.magazine == self}.map {|article| article.title}
  end

    def self.all
      @@all
    end
end
