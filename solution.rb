  class Article
  attr_accessor :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end

    def self.all
      @@all
    end

  end

  class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end


    def add_articles(magazine, title)
      Article.new(self, magazine, title)
    end

    def articles
      Article.all.select do |article|
        article.author == self
      end
    end

    def magazines
      self.articles.map do |article|
        article.magazine
      end
    end

    # Returns an array of categories of the magazines for which the author has contributed to

    def show_specialties
      self.magazines.map do |magazine|
        magazine.category
      end
    end


  end

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

    def articles
      Article.all.select do |article|
        article.magazine == self
      end
    end


  # Given a string of magazine's name, this method returns the first magazine object that matches
    def self.find_by_name(name)
      self.all.find do |magazine|
        magazine.name == name
      end
    end

    # Returns an array of the titles of all articles written for that magazine
    def article_titles
      self.articles.map do |article|
        article.title
      end
    end
  end
