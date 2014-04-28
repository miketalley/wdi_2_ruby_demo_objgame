require_relative 'player'
require_relative 'magic'
require_relative 'talker'

module GAGame

  class Wizard < Player
    @@total_wizards = 0

    # Getter method for class variable total_wizards
    def self.total_wizards
      @@total_wizards
    end

    # Mixin the Talker module
    include Talker
    include Magic

    DEFAULT_HEALTH = 20
    DEFAULT_STRENGTH = 75

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      super(first_name, last_name)
      @health = DEFAULT_HEALTH
      @strength = DEFAULT_STRENGTH
      @@total_wizards += 1
    end

    def attack(opponent)
      if alive?
        opponent.take_damage(strength)
        talk("#{full_name} is attacking #{opponent.full_name}.")
        cast(opponent)
      else
        talk("#{full_name} cannot attack because they are dead!")
      end
    end

  end

end
