class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  #Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(magazine_name)
    self.all.find {|magazine| magazine.name == magazine_name}
  end

  #Returns an array of the titles of all articles written for that magazine
  def article_titles
    Article.all.select {|article| article.magazine == self}.map {|article| article.title}
  end

    def self.all
      @@all
    end
end
