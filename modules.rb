
# Modules
# Grouping methods, classes, and constants together.
module Body
  def Body.breathe(gas = "Oxygen")
    puts("Body inhales #{gas}")
  end
  def Body.eat(food = "Sushi")
    puts("Body intakes #{food}")
  end
end

Body.breathe
Body.breathe("Nitrogen")
Body.eat
Body.eat("BBQ")

# Require
# Similar to Java import, C include, JS import etc.
# Used for loading predefined modules.
$LOAD_PATH << '.'
require 'clear.rb'
clear
require 'blocks.rb'
read_module


# include
# For embedding a module in a class.
module Asia
  ISLAND = 'JP'
  def Asia.non_island
    puts("KR")
  end
  def Asia.non_asian
    puts("AU")
  end
end

class World
  include Asia # Insert 'include' right after the class name.
  def show_continents
    puts("America")
    Asia.non_island
    puts("#{Asia::ISLAND}")
    Asia.non_asian
    puts("Europe")
  end
end

(World.new).show_continents


# mixins (Concept only, no API)
# Ruby does not support multiple inheritance directly,
# eliminates the need for multiple inheritance.
# Attaching features to classes.
# Similar to 'implements' from Java, except no override is needed.
module Game
  def fighting
    puts("GGX")
  end
  def racing
    puts("Initial D")
  end
end
module Ufo
  def crane
    puts("UFO Catcher")
  end
  def string_cutter
    puts("Wallet digger")
  end
end

class Arcade
  include Game
  include Ufo
  def play
    puts("Lets have some fun!")
  end
end

clear
arcade = Arcade.new
arcade.racing
arcade.fighting
arcade.string_cutter
arcade.crane
