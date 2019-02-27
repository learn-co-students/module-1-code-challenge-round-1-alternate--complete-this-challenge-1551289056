require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Authors
nich = Author.new("Nich")
kim = Author.new("Kim")
rafa = Author.new("Rafa")
ruth = Author.new("Ruth")

#Magazines
vanity_fair = Magazine.new("Vanity Fair", "Fashion")
cosmo = Magazine.new("Cosmopolitan", "Fashion")
sports = Magazine.new("Sports Illustrated", "Sports")
new_yorker = Magazine.new("The New Yorker", "News")

#Articles
Article.new("What Men Think", nich, cosmo)
Article.new("Seahawks Trading QB?", nich, sports)
Article.new("Men's Fashion", nich, vanity_fair)
Article.new("The Green New Deal", kim, new_yorker)
Article.new("What Women Think", kim, cosmo)
Article.new("What Dogs Think", rafa, cosmo)
Article.new("The Future of E-Sports", ruth, sports)







### DO NOT REMOVE THIS
binding.pry

0
