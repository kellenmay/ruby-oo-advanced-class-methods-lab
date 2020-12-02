require 'pry'

class Water
    attr_accessor :ounces

   @@water_drank = []

    
    def initialize(ounces)
        @ounces = ounces
        @@all << self
    end

    def self.all
        @@all
    end

    def confirmation
        return "You just drank #{self.ounces} oz's"
    end
    
    def self.total_logs
        @@water_drank.count
    end


end

# water(8) = Water.new 