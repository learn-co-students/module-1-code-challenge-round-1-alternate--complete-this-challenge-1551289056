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
    first_magazine = []
    one_article = Article.all.find {|instance| instance.magazine.name == name}
    first_magazine << one_article.magazine
    first_magazine
  end

  def article_titles
    titles_by_mag = []
    select_articles = Article.all.select {|instance| instance.magazine == self}
    select_articles.each do |instance|
      titles_by_mag << instance.title
    end
    titles_by_mag
  end

end
