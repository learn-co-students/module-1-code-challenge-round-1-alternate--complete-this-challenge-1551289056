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
