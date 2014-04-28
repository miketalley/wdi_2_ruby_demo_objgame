# Create ruby module Talker
module GAGame

  module Talker

    def talk(message)
      puts "#{message}"
      %x( say #{message})
    end

  end

end
