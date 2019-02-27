require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

discovery = Magazine.new("discovery", "science")
wired = Magazine.new("wired", "science")
cosmopolitan = Magazine.new("cosmopolitan", "fashion")

john = Author.new("john")
fred = Author.new("fred")
dan = Author.new("dan")

article1 = Article.new(john, discovery)
article2 = Article.new(fred, wired)
article3 = Article.new(dan, cosmopolitan)

def show_specialties
  arr = []
  Article.all.each do |article|
    if article.author == self
      arr << article.magazine.category
end
end
arr
end
### DO NOT REMOVE THIS
binding.pry

0
