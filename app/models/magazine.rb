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

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end


# Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  # Returns an array of the titles of all articles written for that magazine
  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

end
