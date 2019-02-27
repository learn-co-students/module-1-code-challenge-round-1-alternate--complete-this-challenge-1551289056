class Author
  attr_accessor :name, :titles
  @@all = []


  def initialize(name, titles)
    @name = name
    @titles = titles
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def add_article(title, magazine)

  end

  def articles
    Article.all.select do |article_v|
      article_v.author == self
    end
  end

end
