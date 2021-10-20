$LOAD_PATH << '.'
require 'clear.rb'
# Date & Time
# Refers to OS's date.
# Dates available between 1970 to 2038. (years)

current_time = Time.new
puts current_time
now_time = Time.now
puts now_time
puts current_time.year
puts current_time.month
puts current_time.day
puts current_time.wday # 0: Day of week: 0 is Sunday
puts current_time.yday # Day of year
puts current_time.hour # 0~23hr 
puts current_time.min # 0 ~ 59
puts current_time.sec # 0 ~ 59
puts current_time.usec # Return time in milliseconds
puts current_time.zone # Timezone name

clear
puts current_time.utc_offset
puts current_time.isdst #  false: If UTC does not have DST.
puts current_time.utc? # true: if t is in UTC time zone
puts current_time.localtime
puts current_time.strftime("%Y-%m-%d ^-^ %H:%M:%S")
puts Time.now + 6000
