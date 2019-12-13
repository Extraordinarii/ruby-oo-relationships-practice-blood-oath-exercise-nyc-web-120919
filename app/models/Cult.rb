require 'pry'
require_relative 'bloodoath'
class Cult
    attr_reader :name, :location, :founding_year
    attr_accessor :slogan

    @@all = [] #we're storing all cult information
    def initialize(name, location, founding_year, slogan = "")
        @name = name
        @location = location 
        @founding_year = founding_year
        @slogan = slogan
        @@all << self    #all info being passed is dumped into array
    end

    def self.all #returns the array of cult
        @@all
    end 

    def self.find_by_name(name)   #since class method of Cult.find_by_name , we call it self
       @@all.find {|cult| cult.name == name}
    end 
    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end 
    def self.find_by_founding_year(year)
        @@all.select {|cult| cult.year == year}
    end 

    def cult_population
        array = Bloodoath.all.select {|oath| oath.cult == self} #array holds an array filled with a specific cult
        array.length
    end
    def recruit_follower(follower)
        Bloodoath.new(follower, self)   ##we call the Bloodoath class, and recruit the follower based on the cult that they joined
    end
    def average_age  #cult3.average_age
        aa = 0 #sum all ages
        array = Bloodoath.all.select {|oath| oath.cult == self}
        array.each {|oath| aa += oath.follower.age }                
                    aa/array.length
    end
    def getting_cults_bloodoaths
        array = Bloodoath.all.select {|oath| oath.cult == self}
    end 

    def my_followers_mottos
        self.getting_cults_bloodoaths.each {|oath| puts oath.follower.life_motto}
        return
    end 

    def self.least_popular
        least_popular_cult = Cult.all[0] ##we set the var = first cult in the TDD
        Cult.all.each do |cult|
            if least_popular_cult.cult_population > cult.cult_population  #
                least_popular_cult = cult #returning the entire cult not just the follower #
            end
        end
        return least_popular_cult
    end

    def self.most_common_location
        current_common_location = ""
        comparing_var = 0
        unique_location_array = Cult.all.map {|cult| cult.location}.uniq
        unique_location_array.each do |location|
            counter = 0
            Cult.all.each do |cult| 
                if cult.location == location
                    counter -= -1
                end 
            end 
            if counter > comparing_var
                current_common_location = location
                comparing_var = counter
            end 
        end
        current_common_location 
    end 
end