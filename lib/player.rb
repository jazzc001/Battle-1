require_relative 'game'

class Player
    attr_accessor :name, :hitpoints

    def initialize(name, hitpoints = 100)
        @name = name
        @hitpoints = hitpoints
    end
    

    def receive_damage
        @hitpoints -= 10
    end


end