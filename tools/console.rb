require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mac = Author.new("Mac")
dee = Author.new("Dee")
frank = Author.new("Frank")


badass = Magazine.new("Project Badass!", "health and fitness")
birds = Magazine.new("Big Dumb Flightless Birds", "ornithology")


article1 = mac.add_article("Crowteins and You", badass)
article2 = mac.add_article("Crowteins and You", birds)
article3 = dee.add_article("Does Casting an Ostrich for My Character Cross the Line?", birds)










### DO NOT REMOVE THIS
binding.pry

0
