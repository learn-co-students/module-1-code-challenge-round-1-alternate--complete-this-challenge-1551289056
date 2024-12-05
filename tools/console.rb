require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
ny_times = Magazine.new("New York Times", "Newspaper")
seventeen = Magazine.new("Seventeen", "Teen Magazine")
enquirerer = Magazine.new("Enquirerer", "Tabloid")

jk_rowling = Author.new("JK Rowling")
michelle_obama = Author.new("Michelle Obama")
bill_clinton = Author.new("Bill Clinton")

climate = Article.new(jk_rowling, ny_times)
horses = Article.new(michelle_obama, seventeen)
makeup = Article.new(bill_clinton, enquirerer)

#TESTS FOR AUTHOR
# #calls method but doesnt ask to display it, add second line below
# puts "Testing michelle_obama.name"
# michelle_obama.name
# puts michelle_obama.name
# puts
#
# puts "Testing Author.all"
# puts Author.all
# puts
#
# puts "michelle_obama.articles.count before adding article"
# puts michelle_obama.articles.count
#
# michelle_obama.add_article("Painting Today", ny_times)
# puts "michelle_obama.articles.count after adding article"
# puts michelle_obama.articles.count
#
# puts "Testing michelle_obama.magazines"
# puts michelle_obama.magazines
#
#
# puts "Testing michelle_obama show_specialties"
# puts michelle_obama.show_specialties
# puts michelle_obama.show_specialties_long
# puts michelle_obama.show_specialties_really_long

#TESTS FOR MAGAZINE
puts "Testing Magazine.all"
puts Magazine.all
puts
puts "Testing seventeen.name"
puts seventeen.name
puts
# puts "Testing Magazine.category"
# puts Magazine.category
puts
puts "Testing Magazine.find_by_name()"
puts Magazine.find_by_name('New York Times')
puts
puts "Testing Magazine.article_titles"
#calling an instance method on an instance of the class, thats why youre not putting
#Magazine.article_titles
puts ny_times.article_titles

# puts "Testing Magazine.articletitles"
# puts enquirerer.article_titles
### DO NOT REMOVE THIS
binding.pry
