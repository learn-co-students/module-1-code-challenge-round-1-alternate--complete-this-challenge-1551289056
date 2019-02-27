class Author
  attr_accessor :name
  @@all=[]
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_article (title, magazine)
    a=Article.new(self, magazine)
    a.title= title
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author==self
    end
  end

  #made array unique
  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  #made array unique
  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end.uniq
  end

end
