require_relative "player"

class Knight < Player

  DEFAULT_HEALTH = 50
  DEFAULT_STRENGTH = 15

  attr_reader :health, :strength, :alive

  def initialize(first_name, last_name)
    super(first_name, last_name)
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
  end

end
