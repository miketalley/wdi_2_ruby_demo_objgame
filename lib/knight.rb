require_relative 'player'
require_relative 'talker'
require_relative 'charge'

module GAGame

  class Knight < Player

    # Mixin the Talker module
    include Talker
    include Charge

    DEFAULT_HEALTH = 50
    DEFAULT_STRENGTH = 15

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      super(first_name, last_name)
      @health = DEFAULT_HEALTH
      @strength = DEFAULT_STRENGTH
    end

    def chug_potion
      talk("#{first_name} #{last_name} chugs a health potion!")
      @health = DEFAULT_HEALTH
    end

    def fairy
      talk("#{first_name} #{last_name} has a fairy ressurrect him!")
      @health = DEFAULT_HEALTH
    end

    def attack(opponent)
      if alive?
        opponent.take_damage(strength)
        talk("#{full_name} is attacking #{opponent.full_name}!")
        charge(opponent)
      else
        talk("#{full_name} cannot attack because they are dead!")
      end
    end

  end

end
