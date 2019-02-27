require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


jen = Author.new("Jen")
steve = Author.new("Steve")
drew = Author.new("Drew")

cats= Magazine.new("Meow", "cats")
dogs = Magazine.new("Ruff", "dogs")
plants = Magazine.new("Grow", "plants")

a1 = Article.new("Barking", steve, dogs)
a2 = Article.new("Purring", steve, cats)
a3 = Article.new("Scratching", jen, cats)
a4 = Article.new("Photosynthesis", drew, plants)
a5 = Article.new("Soil", jen, plants)

###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
