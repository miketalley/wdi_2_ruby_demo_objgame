require_relative '../lib/player'
require_relative '../lib/wizard'
require_relative '../lib/knight'
require 'pry'

puts "Starting the game!!!"

# Calls Namespace, Class, and Class Method to get total number of Wizards created
puts "Total Wizards: #{GAGame::Wizard.total_wizards}"

knight = GAGame::Knight.new("Conan", "The Barbarian")

wizard = GAGame::Wizard.new("Gandalf", "Grey")

puts "Total Wizards: #{GAGame::Wizard.total_wizards}"


# BATTLE

# while wizard.alive?
#   puts "Knight: #{knight.health} Health"
#   puts "Wizard: #{wizard.health} Health"
#   puts "Knight attacks Wizard"
#   knight.attack(wizard)
#   puts "Knight: #{knight.health} Health"
#   puts "Wizard: #{wizard.health} Health"
#   puts "Wizard attacks Knight"
#   wizard.attack(knight)
#   puts "Knight: #{knight.health} Health"
#   puts "Wizard: #{wizard.health} Health"
#   puts "#{knight.full_name} is " + (knight.alive? ? "Alive" : "Dead")
#   knight.fairy
#   puts "Knight: #{knight.health} Health"
#   puts "Wizard: #{wizard.health} Health"
#   puts "Knight attacks Wizard"
#   knight.attack(wizard)
#   puts "Knight: #{knight.health} Health"
#   puts "Wizard: #{wizard.health} Health"
#   puts "Wizard is " + (wizard.alive? ? "Alive" : "Dead")
# end
