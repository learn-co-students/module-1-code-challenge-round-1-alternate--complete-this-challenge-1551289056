class Article

  attr_reader :author, :magazines, :name, :category, :titles

  @@all = []

  def initialize(author, magazine)
    @author = author
    @magazine = magazine
    @name = name
    @category = category
    @titles = titles
    @@all << self
  end

  def self.all
      @@all
  end

  def author
    @author
  end

end
