class Article
  attr_accessor :title
  attr_reader :author, :magazine

  @@all = []

  def initialize(magazine, author, title)
    @magazine = magazine
    @author = author
    @title = title

    @@all << self
  end


  def self.all
    @@all
  end


end
