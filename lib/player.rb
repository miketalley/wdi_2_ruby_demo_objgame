require_relative "person"
require_relative "talker"

module GAGame

  class Player < Person

      # Mixin the Talker module
      include Talker

      DEFAULT_HEALTH = 20
      DEFAULT_STRENGTH = 5

      attr_reader :health, :strength

      def initialize(first_name, last_name)
        super(first_name, last_name)
        @health = DEFAULT_HEALTH
        @strength = DEFAULT_STRENGTH
        talk("Created Player #{full_name}.")
      end

      def alive?
        health > 0
      end

      def take_damage(attack_strength)
        @health -= attack_strength
        talk("#{full_name} took #{attack_strength} damage!")
      end

      def attack(opponent)
        if alive?
          opponent.take_damage(strength)
          talk("#{full_name} is attacking #{opponent.full_name}.")
        else
          talk("#{full_name} cannot attack because they are dead!")
        end
      end

  end

end
