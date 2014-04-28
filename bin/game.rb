require_relative '../lib/player'
require 'pry'

puts "Starting the game!!!"

jack = Person.new('Jack', 'Sparrow')

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brentzel")
puts "#{game_man.full_name}'s Health: #{game_man.health}"

puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

puts "Game man health is #{game_man.take_damage(30)}"

puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")


#binding.pry
