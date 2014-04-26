class Person
  attr_accessor :first_name, :gender
  attr_accessor :last_name

  def initialize(first_name, last_name, gender)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
