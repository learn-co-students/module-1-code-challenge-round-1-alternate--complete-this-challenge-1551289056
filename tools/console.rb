require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
matt = Author.new("Matt")
john = Author.new("John")

m1 = Magazine.new("M1", "Horror")
m2 = Magazine.new("M2", "Adventure")
m3 = Magazine.new("M3","Action")

a1 = Article.new(matt, m1, "title1")
a2 = Article.new(matt, m2, "title2")
a3 = Article.new(matt, m3, "title3")
a4 = Article.new(john, m1, "title4")








### DO NOT REMOVE THIS
binding.pry

0
