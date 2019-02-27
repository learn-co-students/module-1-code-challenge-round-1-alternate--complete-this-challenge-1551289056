class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    result = []
    self.articles.each do |article|
      if article.magazine == self
        result << article.title
      end
    end
    result
  end

  def self.find_by_name(mag_name)
    self.all.find do |magazine|
      magazine.name == mag_name
    end
  end

  def self.all
    @@all
  end
end #class end
