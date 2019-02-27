class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  # INSTANCE METHODS

  def article_titles
    Article.all.select do |xx|
      xx.magazine == self
    end.map do |yy|
      yy.title
    end
  end

  # CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |xx|
      xx.name == name
    end

  end

end
