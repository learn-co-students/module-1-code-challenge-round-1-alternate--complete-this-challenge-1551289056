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

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    self.articles.map { |article| article.magazine }.uniq
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def show_specialties
    self.magazines.map { |magazine| magazine.category }
  end

end
