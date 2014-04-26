require_relative 'person'


class Player < Person
  # This is a Constant that can be accessed INSIDE all Player instances with:
  # DEFAULT_HEALTH
  # This is a Constant that can be accessed OUTSIDE all Player instances with:
  # Player::DEFAULT_HEALTH
  DEFAULT_HEALTH = 20

  DEFAULT_STRENGTH = 5
  attr_accessor :health, :strength

  def initialize(first_name, last_name, gender)
    super(first_name, last_name, gender)
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
  end

  def attack(player)
    player.got_attacked(strength)
  end

  def got_attacked(attack_strength)
    # DO THIS TO SHOW ERROR
    # health -= attack_strength
    self.health -= attack_strength
  end
end
