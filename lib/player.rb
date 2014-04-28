require_relative "person"

class Player < Person

    DEFAULT_HEALTH = 20
    DEFAULT_STRENGTH = 5

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      super(first_name, last_name)
      @health = DEFAULT_HEALTH
      @strength = DEFAULT_STRENGTH
    end

    def alive?
      health > 0
    end

    def take_damage(attack_strength)
      @health -= attack_strength
    end

    def attack(opponent)
      if alive?
        opponent.take_damage(strength)
      else
        puts "#{self.full_name} cannot attack because they are dead."
      end
    end

end
