# Create ruby module Spell
module GAGame

  module Charge

    def charge(opponent)
      puts "Taste my steel #{opponent.full_name}!!"
      %x( say -v "Hysterical" Taste my steel #{opponent.full_name})
    end

  end

end
