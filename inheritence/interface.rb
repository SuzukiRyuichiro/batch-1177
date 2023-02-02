require_relative 'house'
require_relative 'castle'
require_relative 'sky_scraper'

# white_house = House.new("White House", 10000, 10000)
# puts "#{white_house.name} has area of #{white_house.floor_area}"
# casa_blanca = House.new("Casa Blanca", 200, 300)

# puts "The name of the house is #{white_house.name} and #{white_house.width}m wide and #{white_house.length}m long"
# puts "The name of the house is #{casa_blanca.name}"



windsor_castle = Castle.new("Windsor", 100, 100)
p windsor_castle
windsor_castle.butler.clean_castle
# # puts "The name of the castle is #{windsor_castle.name} and  the floor are is #{windsor_castle.floor_area}"
# windsor_castle.butler = "Geroge"

# puts windsor_castle.has_a_butler? ? "Yes we do!!" : "No we don't"

# puts "#{windsor_castle.name} has area of #{windsor_castle.floor_area} and has a butler called #{windsor_castle.butler}"


# # Castle.categories # class method != instance method
# puts Castle.categories.join(', ')

# one_world = SkyScraper.new("One World", 50, 50, 500)
# puts "The name of the sky scraper is #{one_world.name} and #{one_world.type_of_owner}"
