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
    new_article = Article.new(self, magazine)
    new_article.title = title
  end

  def articles
  arr = []
  Article.all.each do |article|
    if article.author == self
      arr << article
    end
  end
  arr
  end

  def magazines
  arr = []
  Article.all.each do |article|
    if article.author == self
      arr << article.magazine
    end
  end
  arr
  end

def show_specialties
  arr = []
  Article.all.each do |article|
    if article.author == self
      arr << article.magazine.category
end
end
arr
end
end

class Article

attr_reader :author, :magazine
attr_accessor :title
@@all = []

def initialize(author, magazine)
  @author = author
  @magazine = magazine
  @@all << self
end

def self.all
  @@all
end

end


class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def self.find_by_name(name)
  self.all.find do |magazine|
    magazine.name == name
  end
end

  def article_titles
    arr = []
    Article.all.each do |article|
      if article.magazine == self
        arr << article
  end
end
arr
end
end

# Please copy/paste all three classes into this file to submit your solution!
