Array.new(rand(10)).each do |i|
  random_number = rand(10)

  # if random_number < 1
  #   puts(random_number)
  # elsif random_number < 3
  #   puts(random_number)
  # elsif random_number < 6
  #   puts(random_number)
  # elsif random_number < 8
  #   puts(random_number)
  # else
  #   puts(random_number)
  # end
end

$sample = 0
# print 'sample' if $sample

# 'unless'
# Executes code if conditional is false.
# If the conditional is true, code specified in the else clause is executed.
# unless $sample.eql?(1)
#     puts('false condition')
#   else
#     puts('true condition')
# end
# puts('false condition') unless $sample == 1

# case
$input = rand(10)
puts($input)
case $input
when 0 .. 2
  puts('Beginning')
when 3 .. 5
  puts('Middle')
else
  puts('After')
end
