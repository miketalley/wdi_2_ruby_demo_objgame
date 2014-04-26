require 'pry'
require_relative '../lib/knight'

puts "Weeeeelcome to the G-g-game"

joe = Player.new("Joe", "Smoe", "Male")
puts "Created the #{joe.class.name }, #{joe.full_name}"
puts "His health is #{joe.health}"
puts "His strength is #{joe.strength}"

puts "The default health of a Player is #{Player::DEFAULT_HEALTH}"

tom_b = Knight.new("Tom", "Blackard", "Male")
puts "Created the #{tom_b.class.name }, #{tom_b.full_name}"
puts "#{tom_b.full_name}'s health is #{tom_b.health}"
puts "#{tom_b.full_name}'s strength is #{tom_b.strength}"

# Joe's attacks Tom B.
joe.attack(tom_b)
puts "#{tom_b.full_name}'s health is #{tom_b.health}"
