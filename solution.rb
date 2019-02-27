# Please copy/paste all three classes into this file to submit your solution!


class Article
  attr_reader :author, :magazine, :title

  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end






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

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name}
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def article_titles
    self.articles.map { |article| article.title }
  end

end







# Console tests made use of the following test instances:

# Authors
# ===================================================
# mac = Author.new("Mac")
# dee = Author.new("Dee")
# frank = Author.new("Frank")
#
# Magazines
# ===================================================
# badass = Magazine.new("Project Badass!", "health and fitness")
# birds = Magazine.new("Big Dumb Flightless Birds", "ornithology")
#
# Articles (using author_instance.add_article method)
# ===================================================
# article1 = mac.add_article("Crowteins and You", badass)
# article2 = mac.add_article("Crowteins and You", birds)
# article3 = dee.add_article("Does Casting an Ostrich for My Character Cross the Line?", birds)
