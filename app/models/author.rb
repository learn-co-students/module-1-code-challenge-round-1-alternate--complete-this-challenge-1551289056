class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |xx|
      xx.author == self
    end
  end

  def magazines
    self.articles.map do |xx|
      xx.magazine
    end.uniq
  end

  def show_specialties
    self.magazines.map do |xx|
      xx.category
    end.uniq
  end

  # CLASS METHODS

  def self.all
    @@all
  end

end
