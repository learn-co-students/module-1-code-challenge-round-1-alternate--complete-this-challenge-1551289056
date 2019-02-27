require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

ted = Author.new("TED")
bill = Author.new("Bill")
jill = Author.new("Jill")
jen = Author.new("Jen")

magazine1 = Magazine.new("Mag1", "Sports")
magazine2 = Magazine.new("Mag2", "Beauty")
magazine3 = Magazine.new("Mag3", "Coooking")
magazine4 = Magazine.new("Mag4", "Driving")


article1 = Article.new(ted, magazine1)
article2 = Article.new(bill, magazine2)

ted.add_article("baking", magazine3)
jill.add_article("driving", magazine4)



### DO NOT REMOVE THIS
binding.pry

0
