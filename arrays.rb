$LOAD_PATH << '.'
require 'clear.rb'

# arrays
# Ruby arrays are not as rigid as arrays in other languages.
# It is possible to add Integers, Strings, Objs in a same array.
arr = Array.new
puts(arr.length)

arr = Array.new(7)
puts(arr.length, arr.size)

arr = Array.new(6, "pc")
puts "#{arr}"

arr = Array.new(6) {|el| el *= 1.5}
puts "#{arr}"

arr = Array(0..10)
puts "#{arr}"
puts "#{arr.at(5)}"

arr1 = Array.new(10) {|el| el *= 2}
arr2 = Array.new(10) {|el| el *= 3}
puts "#{arr1 & arr2}" # AND results only
puts "#{arr1 * 2}"
puts "#{arr1 + arr2}"
puts "#{arr1 - arr2}"
puts "#{arr1 << arr2}"
puts "#{arr1 <=> arr2}" # Compares size and its accumlated value
puts "#{arr1 == arr2}" # Compares size and its accumlated value
puts "#{arr1[1..4]}"
puts "#{arr2.slice(2..5)}"
arr2.clear
puts "#{arr2}"
arr3 = Array.new(10) {|el| el *= 4}
arr4 = arr3.map {|el| el + 1.1}
puts "#{arr4}"

clear
char_arr = ["G","e","n","s","h","i","n"]
puts char_arr.pack("A2A1A2a1a2a3a4")