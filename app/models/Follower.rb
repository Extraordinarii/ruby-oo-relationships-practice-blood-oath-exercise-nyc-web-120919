require_relative 'bloodoath'
class Follower
    attr_reader :name, :age
    attr_accessor :life_motto

    @@all = []
    def initialize(name, age)
        @name = name 
        @age = age.to_f
        @life_motto = ""

        @@all <<  self   #we are storing followers , name age motto
    end 

    def self.all
        @@all
    end 

    def self.of_a_certain_age(age)
        @@all.select {|follower| follower.age >=age}  #
    end 

    def join_cult(cult)
        Bloodoath.new(self, cult)  #takes in arg as "follower" which is a class instance of it 'self'
    end 
end