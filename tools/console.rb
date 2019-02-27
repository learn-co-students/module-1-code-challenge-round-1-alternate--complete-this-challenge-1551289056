require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

##create authors

auth1 = Author.new('auth1')
auth2 = Author.new('auth2')
auth3 = Author.new('auth3')

mag1 = Magazine.new('mag1','sports')
mag2 = Magazine.new('mag2','fashion')
mag3 = Magazine.new('mag3','tech')

article1 = Article.new('article1',auth1,mag1)

article2 = Article.new('article2',auth2,mag2)

article3 = Article.new('article3',auth3,mag3)

article4 = Article.new('article4',auth1,mag2)

article5 = Article.new('article5',auth2,mag3)


### DO NOT REMOVE THIS
binding.pry

0
