class Author
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  	def self.all
		@@all
	end

	def add_article(title, magazine)
		new_article = Article.new(self, magazine)
	end

	def articles
		Article.all.select do |article|
			article.author == self
		end
	end

	def magazines
		new_array = []
		Article.all.each do |article|
			if article.author == self
				new_array << article.magazine
			end
		end
		new_array
	end

	def show_specielties
		self.magazines.map do |magazine|
			magazine.category
		end
	end

end
