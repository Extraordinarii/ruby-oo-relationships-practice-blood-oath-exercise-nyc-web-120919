require 'pry'
require_relative 'Cult' 
require_relative 'Follower' 
require_relative 'Bloodoath'
cult1 = Cult.new("Brotherhood of Steel", "The wastelands", 2491, "Ghouls must die")
cult2 = Cult.new("Scientology", "California", 1980, "You can buy your way heaven")
cult3 = Cult.new("Avengers", "New York", 2009, "Earth's mightiest protectors")
cult4 = Cult.new("Kira","California",2008, "Kill anyone who opposes")
cult5 = Cult.new("Lelouche","California", 2004, "Save the world")

follow1 = Follower.new("John", 30)
follow1.life_motto=("Livin life to the fullest")
follow2 = Follower.new("Rick", 70)
follow3 = Follower.new("Morty", 13)
follow3.life_motto=("Oh gee Rick")
follow4 = Follower.new("Rck", 30)
follow5 = Follower.new("Rik", 60)
follow6 = Follower.new("k", 74)
follow7 = Follower.new("Rk", 530)
follow8 = Follower.new("k", 10)

follow1.join_cult(cult2)  #follower 1 calls the instance method join cult 
follow3.join_cult(cult3) 
follow2.join_cult(cult1)
follow1.join_cult(cult3)
follow4.join_cult(cult1)

#cult3
binding.pry