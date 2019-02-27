require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

hemingway = Author.new("Hemingway", "first")
laleh = Author.new("Laleh", "second")
beckett = Author.new("Beckett", "third")

harpers = Magazine.new("Harpers", "General")
rs = Magazine.new("RollingStone", "Music")
people = Magazine.new("People", "General")

Article.new(hemingway, harpers)
Article.new(laleh, harpers)
Article.new(laleh, rs)
Article.new(laleh, people)
Article.new(beckett, rs)
Article.new(beckett, harpers)





###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
