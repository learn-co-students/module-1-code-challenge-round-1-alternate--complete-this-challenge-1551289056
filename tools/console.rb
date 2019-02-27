require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
## SETTING UP VARIABLES
# AUTHORS
a1 = Author.new("Author 1")
a2 = Author.new("Author 2")
a3 = Author.new("Author 3")

# MAGAZINES
m1 = Magazine.new("Magazine 1", "Sci-Fi")
m2 = Magazine.new("Magazine 2", "Business")

# ARTICLES
article1 = Article.new("Article 1", a1, m1)
article2 = Article.new("Article 2", a2, m1)
article3 = Article.new("Article 3", a2, m2)


## RUNNING TESTS ##
# AUTHORS

puts "----------AUTHOR CLASS: TESTS----------"
puts "---  Testing #name on 'Author 1'  ---"
puts a1.name
puts

puts "---  Testing .all  ---"
puts Author.all
puts

puts "---  Testing #add_article w/ 'Article 4' & 'Magazine 1' on 'Author 3'  ---"
puts a3.add_article("Article 4", m1)
puts

puts "---  Testing #articles on 'Author 2'  ---"
puts a2.articles
puts

puts "---  Testing #magazines on 'Author 3'  ---"
puts a3.magazines
puts

puts "---  Testing #show_specialties on 'Author 2'  ---"
puts a2.show_specialties
puts


puts "----------ARTICLE CLASS: TESTS----------"
puts "---  Testing .all  ---"
puts Article.all
puts

puts "---  Testing #author on 'Article 1'  ---"
puts article1.author
puts

puts "---  Testing #magazine on 'Article 1'  ---"
puts article1.magazine
puts


puts "-----------MAGAZINE CLASS: TESTS----------"
puts "---  Testing #name on 'Magazine 1'  ---"
puts m1.name
puts

puts "---  Testing #category on 'Magazine 1'  ---"
puts m1.category
puts

puts "---  Testing .all  ---"
puts Magazine.all
puts

puts "---  Testing .find_by_name w/ 'Magazine 2'  ---"
puts Magazine.find_by_name("Magazine 2")
puts

puts "---  Testing #article_titles  on 'Magazine 1'  ---"
puts m1.article_titles
puts





### DO NOT REMOVE THIS
binding.pry

0
