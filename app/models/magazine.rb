class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def self.find_by_name(name)
  self.all.find do |magazine|
    magazine.name == name
  end
end

  def article_titles
    arr = []
    Article.all.each do |article|
      if article.magazine == self
        arr << article
  end
end
arr
end
end
