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

  def add_article(title,magazine)
    Article.new(self, magazine)
  end

  def articles
    Article.all.select{|article|article.author==self}
  end

  def magazines
      # Article.all.select{|article|article.author==self}
      self.articles.map{|article|article.magazine}
  end

  def show_specialties
    self.magazines.map{|magazine|magazine.category}
  end

  def show_specialties_long
    current_articles = Article.all.select do |article|
      article.author==self
    end
    current_magazines = current_articles.map do |article|
      article.magazine
    end
    specialties = current_magazines.map do |magazine|
      magazine.category
    end
  end

  def show_specialties_really_long
    current_articles = []
    Article.all.each do |article|
      if article.author==self
        current_articles << article
      end
    end
    current_magazines = []
    current_articles.each do |article|
      current_magazines << article.magazine
    end
    specialties = []
    current_magazines.each do |magazine|
      specialties << magazine.category
    end
    specialties
  end

end
