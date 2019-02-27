require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
puts "---Magazine---"
m1 = Magazine.new("Mag1 name", "garden")
m2 = Magazine.new("Mag2 name", "women")
puts

puts "---Author---"
a1 = Author.new("Auth1 name")
a2 = Author.new("Auth2 name")
puts

puts "---Article---"
art1 = Article.new("Art1 Title", a1, m1)
art1 = Article.new("Art2 Title", a2, m2)
art1 = Article.new("Art3 Title", a1, m2)
puts






### DO NOT REMOVE THIS
binding.pry

0
