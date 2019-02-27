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
