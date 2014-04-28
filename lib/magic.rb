# Create ruby module Spell
module GAGame

  module Magic

    def cast(opponent)
      puts "Casting fireball on #{opponent.full_name}!!"
      %x( say -v "Cellos" Casting meteor on #{opponent.full_name}!)
    end

  end

end
