class Article
  attr_reader :author, :magazine
      @@all = []
  def initialize(author, magazine)
    @author=Author
    @magazine=Magazine
    @@all << self
  end

  def self.all
    @@all
  end

end
