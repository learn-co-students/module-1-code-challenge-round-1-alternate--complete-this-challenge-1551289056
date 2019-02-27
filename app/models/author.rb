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
