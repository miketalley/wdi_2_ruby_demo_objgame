# Namespace for my game application is
# GAGame

module GAGame

  class Person

    attr_accessor :first_name, :last_name
    attr_reader

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end

    def full_name
      "#{first_name} #{last_name}"
    end

  end

end
