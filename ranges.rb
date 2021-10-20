$LOAD_PATH << '.'
require 'clear.rb'

# Ranges
# Sequences, Conditions, Intervals
puts ('a'..'d').to_a
puts (1..4).to_a

if((10...22) === 13)
  puts "Thirteen has been summoned."
end

if(('a'...'z') === 'f')
  puts "The word NSFW."
end

if(('FAA'...'FAZ') === 'FAQ')
  puts "Elite !!"
end