require_relative 'person'
require_relative 'report'


class Player < Person

  include Report

  # This is a Constant that can be accessed INSIDE all Player instances with:
  # DEFAULT_HEALTH
  # This is a Constant that can be accessed OUTSIDE all Player instances with:
  # Player::DEFAULT_HEALTH
  DEFAULT_HEALTH = 20

  DEFAULT_STRENGTH = 5
  attr_accessor :health, :strength, :alive

  def initialize(first_name, last_name, gender)
    super(first_name, last_name, gender)
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
    @alive = true
  end


  def name
    "#{first_name} #{lastname}"
  end

  def attack(player)
    report("#{full_name} is attacking #{player.full_name}")
    player.take_damage(strength)
  end

  def take_damage(attack_strength)
    # DO THIS TO SHOW ERROR
    # health -= attack_strength
    self.health -= attack_strength
    self.alive = false if health <= 0
  end
end
