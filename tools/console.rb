require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vogue = Magazine.new("Vogue", "Fashion")
mad = Magazine.new("Mad", "Comedy")
outdoor = Magazine.new("Outdoor", "Sport")
sports_illustrated = Magazine.new("Sorts Illustrated", "Sport")

pete = Author.new("Pete")
pepe = Author.new("Pepe")
pele = Author.new("Pele")

hats = Article.new(vogue, pete, "Hats")
socks = Article.new(vogue, pepe, "Socks")
shoes = Article.new(vogue, pele, "Shoes")
Article.new(mad, pete, "Trumpster Fire")
Article.new(outdoor, pete, "Running into the sunset")
Article.new(outdoor, pepe, "Running into the sunset 2")
###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
