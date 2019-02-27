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

  def name
    @name
  end

  def category
    @category
  end

  def self.find_by_name(name)

  end

  def magazines
    Article.all.select do |article_v|
      article_v.name == self
    end
  end

  def author
    Articles.map do |article_v|
      article_v.author
    end
  end

  def self.find_by_name(name)

  end

  def article_titles
    Article.all.select do |article_v|
      article_v.titles == self
    end
  end

end
