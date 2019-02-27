require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# instantiate authors
jan = Author.new("Jan")
jake = Author.new("Jake")

# instantiate magazine
gloss = Magazine.new("Gloss", "Culture")
people = Magazine.new("People", "Entertainment")
time = Magazine.new("Time", "News")
mother_jones = Magazine.new("Mother Jones", "News")

# instantiate article
# a1 = Article.new(jan, gloss)
# a2 = Article.new(jan, people)
# a3 = Article.new(jake, time)
# a4 = Article.new(jake, mother_jones)
jan.add_article("Article 1", gloss)
jan.add_article("Article 2", gloss)



### DO NOT REMOVE THIS
binding.pry

0
