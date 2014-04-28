require_relative 'player'
require_relative 'horse_rider'


class Knight  < Player

  # Mixin HorseRider module
  include HorseRider

  DEFAULT_HEALTH = 50
  DEFAULT_STRENGTH = 7

  attr_accessor :weapon
  def initialize(first_name, last_name, gender)
    # NOTE: don't need to EXPLICITlY pass all params to super
    # if  all params are passed
    # and if super is first statement in initializer method
    super
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
    @weapon = 'mace'
  end

end
