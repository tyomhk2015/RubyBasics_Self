$LOAD_PATH << '.'
require 'clear.rb'
# Hashes
# a key-value pair object.
# The order of key/value may not be in inserted order.

months = Hash.new("day")
puts months[11]

clear
months = Hash["Jan" => 1, "Feb" => 2, "Mar" => 3]
puts defined? months
puts months
puts months["Jan"]

clear
obj_hash = Hash[[1,"one"] => "Single", [2,"two"] => "Double"]
puts obj_hash[[1,"one"]]
puts obj_hash[[2,"two"]]
clear
puts obj_hash.keys
clear
obj_hash.delete([1,"one"])
puts obj_hash

