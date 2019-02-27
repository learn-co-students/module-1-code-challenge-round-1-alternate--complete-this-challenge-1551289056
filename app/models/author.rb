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

  def add_article(title,magazine)
    Article.new.select{|title|title.magazine==self}
  end

  def articles
    Article.all.select{|article|article.author==self}
  end

  def magazines
      self.all.select{|article|article.magazine}
  end

  def show_specialties
    self.articles.map{|magazine|Magazine.category}
  end


end
