$LOAD_PATH << '.'
require 'clear.rb'

# Exceptions
# Similar to an error or an unexpected/unhandled event.
# "If you did not handle this situation properly, then your program is considered to be of bad quality."
# 'begin / end' is similar to 'try / catch' in Java?
# 'ensure' is similar to 'finally' in Java.
# 'rescue' is similar to 'catch' in Java.

def loto
  loto_six = Array.new(6)
  index = 0
  while index < loto_six.size do
    random_number = rand(1..45)
    if loto_six.include?(random_number)
      index -= 1
    else
      loto_six[index] = random_number
      index += 1
    end
  end
  puts loto_six.sort.join(' ')
end

clear
begin
  text_file = File.new("./text/hololive2.txt", "r")
rescue NameError => name_error
  # puts "Such name does not exist."
rescue Errno::ENOENT => e
  puts e
end

# raise
# Similar to 'throw' in Java
clear
begin
  # raise NameError
  # raise Errno::ENOENT
  # raise TypeError
rescue NameError
  puts "The name is not correct."
rescue TypeError => e
  puts "That is a superstitious type you got there."
  puts e.message
  puts e.backtrace.join("\n\t")
rescue Errno::ENOENT
  puts "R ya asking me to get something that does not exist in here?"
else
  # Executes if there is no exception
  # Must be written b/ 'rescue' and 'ensure', for the sake of the syntax.
  puts "Lucky you, no errors spotted!"
ensure 
  # ensure
  # Similar to 'finally' in Java
  puts "Don't panic! Everything is under the control!!"
end
puts "End of the begin/end block!"


# $! 
# Has the error in the rescue block
# or in the the ensure block,
# if there's no rescue block.
# $! has the value 'nil' everywhere else.
clear
begin
  raise "ONGEKI"
rescue
  puts $!.inspect
end