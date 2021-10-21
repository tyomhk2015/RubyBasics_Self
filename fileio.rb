$LOAD_PATH << '.'
require 'clear.rb'

# fileI/O
# Derived from the class IO.

# gets
# puts "Enter something." # STDOUT
# input_value = gets # Get input from the user. STDIN
# puts "Entered #{input_value}"

# putc
# Output one character at a time.
putc "Cake"
putc "Zombie"

# print
# No 'next line' after the output.
# print "Tokyo, one of the busiest city in the world."
# print "Osaka, one of the busiest city in the world."

# File.new
# For reading & writing a file.
# File.close for closing the file.
music_file = File.new("./music/matsuri.mp3", "r")
if music_file
  # puts music_file.sysread(10)
end
music_file.close

text_file = File.new("./text/sample.txt", "r")
if text_file
  puts text_file.sysread(111)
end
text_file.close

File.open("./text/sample.txt", "r") do |file|
  # puts file.readline()
  # puts file.readchar()
  for line in file.readlines()
    puts line
  end
end

# Write . Updatefile
writing_text_file = File.new("./text/sample.txt", "a")
if writing_text_file
  # writing_text_file.syswrite("\nA new sentence has been added via syswrite().")
end
writing_text_file.close

clear
reading_text_file = File.new("./text/sample.txt", "r")
if reading_text_file
  # puts reading_text_file.sysread(300)

  # each_byte
  # Pass characters one by one.
  reading_text_file.each_byte{|char| putc char; putc ?_}
end
reading_text_file.close

writing_hololive = File.new("./text/hololive.txt", "r+")
writing_hololive.syswrite("Hololive, established by YAGOO")
writing_hololive.close


# Class 'File' is a subclass of the class 'IO'.
# Can be used to manipulate files.
# IO.readlines
# Read content of the file line by line.
clear
puts IO.readlines("./text/sample.txt")[IO.readlines("./text/sample.txt").size - 2]
puts Dir.pwd

# Dir.mkdir("createdDirectory")
# puts Dir.entries(Dir.pwd)

# Dir.delete("createdDirectory")
# puts Dir.entries(Dir.pwd)