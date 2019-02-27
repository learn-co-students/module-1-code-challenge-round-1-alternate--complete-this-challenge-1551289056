require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

claire_muller = Author.new("Claire Muller")
kristen_eason = Author.new("Kristen Eason")
molly_ford = Author.new("Molly Ford")

vogue = Magazine.new("Vogue", "fashion")
home_mag = Magazine.new("Home", "lifestyle")
oprah = Magazine.new("O Magazine", "lifestyle")

article_1 = Article.new(claire_muller, home_mag, "Article 1")
article_2 = Article.new(kristen_eason, vogue, "Article 2")
article_3 = Article.new(claire_muller, vogue, "Article 3")
article_4 = Article.new(molly_ford, oprah, "Article 4")
article_5 = Article.new(claire_muller, home_mag, "Article 5")
article_6 = Article.new(kristen_eason, oprah, "Article 6")


### DO NOT REMOVE THIS
binding.pry

0
