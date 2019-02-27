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

climate = Article.new("George Bush", "Painting Today")
horses = Article.new("Gigi Hadid", "Equestrians Today")
makeup = Article.new("Kylie Jenner", "Lipgloss 101")








### DO NOT REMOVE THIS
binding.pry

0
