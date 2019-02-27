require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1=Author.new("Author 1")
author2=Author.new("Author 2")

nat_geo=Magazine.new("National Geographic", "Nature")
people=Magazine.new("People Magazine", "Celebrity")

author1.add_article("Tigers", nat_geo)
author1.add_article("Lions", nat_geo)
author1.add_article("Kanye", people)
author2.add_article("Kim Kardashian", people)



p author1.articles
puts
p author1.magazines
puts
p author1.show_specialties

p nat_geo.articles
puts
p nat_geo.article_titles
puts
p Magazine.find_by_name("National Geographic")
puts
p Magazine.all

p Author.all
p Magazine.all
p people.articles
puts
p people.article_titles
puts
p Magazine.find_by_name("People Magazine")
puts
p author1.articles
puts
p author1.magazines
puts
p author1.show_specialties
puts 
p nat_geo.category









### DO NOT REMOVE THIS
binding.pry

0
