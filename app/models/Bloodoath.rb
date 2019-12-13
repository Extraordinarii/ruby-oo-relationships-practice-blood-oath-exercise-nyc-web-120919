class Bloodoath
    attr_reader :follower, :cult, :initiation_date

    @@all = []
    def initialize(follower, cult)
       @follower = follower   #entire follower class will be stored in instance var
       @cult = cult             # '' '' 
        @initiation_date = Time.now
        @@all << self
    end

    def self.all
        @@all 
    end 

end