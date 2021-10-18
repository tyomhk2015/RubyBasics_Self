$LOAD_PATH << '.'
require 'clear.rb'


# %
puts(%{Ruby String One})

# Q
puts(%Q{Ruby String #{1 + 1}})

# q
puts(%q{Ruby String #{2 + 1}})

# x: back tick command = shell / terminal command
# https://unix.stackexchange.com/questions/27428/what-does-backquote-backtick-mean-in-commands
puts(%x!dir!)

clear
string_obj = "Apple" =~ /e/
string_cap = "know how".capitalize
string_cap_exc = "know how".capitalize!

# [0, index] = 'index' is not inclusive.
# [more than 0, index] = 'index' is inclusive and the next char is included,
# even when exceeded the length.
string_range = "ichikawasi"[2,"ichikawasi".length - 1]

string_index = "To the moon!".index("m")
string_upper = "there is no such thing as a silver bullet.".upcase()
puts(string_upper)