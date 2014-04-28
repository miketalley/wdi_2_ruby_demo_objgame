require_relative '../lib/player'
require_relative '../lib/wizard'
require_relative '../lib/knight'
require 'pry'

puts "Starting the game!!!"

# jack = Person.new('Jack', 'Sparrow')

# puts "Created #{jack.full_name}"

# game_man = Player.new("Matt", "Brentzel")
# puts "#{game_man.full_name}'s Health: #{game_man.health}"

# puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

# puts "Game man health is #{game_man.take_damage(30)}"

# puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")


# code_man = Player.new("Tom", "Dyer")
# while(game_man.alive?)
#   puts "Code Man attacks Game Man"
#   code_man.attack(game_man)
#   puts "Game Man health is #{game_man.health}"
#   puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
# end
# puts "Game Man has been vanquished"

knight = Knight.new("Conan", "Barbarian")
puts knight.inspect

wizard = Wizard.new("Gandalf", "Grey")
puts wizard.inspect

while wizard.alive?
  puts "Knight: #{knight.health} Health"
  puts "Wizard: #{wizard.health} Health"
  puts "Knight attacks Wizard"
  knight.attack(wizard)
  puts "Knight: #{knight.health} Health"
  puts "Wizard: #{wizard.health} Health"
  puts "Wizard attacks Knight"
  wizard.attack(knight)
  puts "Knight: #{knight.health} Health"
  puts "Wizard: #{wizard.health} Health"
  puts "#{knight.full_name} is " + (knight.alive? ? "Alive" : "Dead")
  knight.fairy
  puts "Knight: #{knight.health} Health"
  puts "Wizard: #{wizard.health} Health"
  puts "Knight attacks Wizard"
  knight.attack(wizard)
  puts "Knight: #{knight.health} Health"
  puts "Wizard: #{wizard.health} Health"
  puts "Wizard is " + (wizard.alive? ? "Alive" : "Dead")
end
#binding.pry
