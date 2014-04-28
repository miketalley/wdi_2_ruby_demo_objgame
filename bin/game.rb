require 'pry'
require_relative '../lib/knight'
require_relative '../lib/wizard'

puts "Weeeeelcome to the G-g-game"
puts '=' * 30
puts "The default health of ALL Players = #{Player::DEFAULT_HEALTH}"

# Create a generic player "Joe"
puts '=' * 30
joe = Player.new("Joe", "Smoe", "Male")
puts "Created the #{joe.class.name }, #{joe.full_name}"
puts "His health is #{joe.health}"
puts "His strength is #{joe.strength}"

# Create a Knight player "Tom"
puts '=' * 30
tom_b = Knight.new("Tom", "Blackard", "Male")
puts "Created the #{tom_b.class.name }, #{tom_b.full_name}"
puts "#{tom_b.full_name}'s health is #{tom_b.health}"
puts "#{tom_b.full_name}'s strength is #{tom_b.strength}"
tom_b.ride

# Joe attacks Tom
puts '=' * 30
puts "Joe attacks Tom"
joe.attack(tom_b)
puts "#{tom_b.full_name}'s health is #{tom_b.health}"
puts "#{tom_b.full_name} is alive? #{tom_b.alive}"

# Create a Wizard Merlin
puts '=' * 30
merlin= Wizard.new("Merlin", "Freakso", "Female")
puts "Created the #{merlin.class.name }, #{merlin.full_name}"
puts "#{merlin.full_name}'s health is #{merlin.health}"
puts "#{merlin.full_name}'s strength is #{merlin.strength}"

puts '=' * 30
# Joe's attacks Merlin 4 times
puts "Joe attacks Merlin until he's dead, dead, dead"


while(merlin.alive)
  puts "ATTACK"
  joe.attack(merlin)
  puts "#{merlin.full_name}'s health is #{merlin.health}"
  puts "#{merlin.first_name}'s is alive? #{merlin.alive}"
end
%x{ say "#{merlin.first_name} is dead"}
