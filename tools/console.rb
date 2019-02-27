require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
cathy = Author.new("Cathy")
fred = Author.new("Fred")
seth = Author.new("Seth")



magazine1 = Magazine.new("Cats Craziness", "Cat Stuff")
magazine2 = Magazine.new("Knitting", "Knitting Stuff")
magazine3 = Magazine.new("Climber Club", "Climbing Stuff")


article1 = Article.new(cathy, magazine1, "How to Calm Your Feline")
article2 = Article.new(fred, magazine2, "Getting Out Tough Knots")
article3 = Article.new(seth, magazine3, "Rock n Roll")
article4 = Article.new(fred, magazine3, "How to Boulder")


# cathy.add_articles(magazine2, "How to Purl")
#fred.articles
#fred.magaines
# magazine3.article_titles
# magazine3.articles
#Magazine.find_by_name("Climber Club")
#article1.author
#article1.magazine


### DO NOT REMOVE THIS
binding.pry

0
