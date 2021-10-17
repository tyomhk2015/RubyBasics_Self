# while
$index = 0
$limit = 5

while $index < $limit do
  puts("This index is No.#{$index + 1}")
  $index += 1
end

begin
  puts("(2nd) This index is No.#{$index + 1}")
  $index += 1
end while $index < $limit

# until
# Executes code while conditional is false.
until $index >= $limit do
  puts("(3rd) This index is No.#{$index + 1}")
  $index += 1
end

begin
  puts("(4th) This index is No.#{$index + 1}")
  $index += 1
end until $index >= $limit

# for & break
for index in 0...10
  puts("For: Current index is #{index}")
  if index.eql?(5) 
    break;
  end
end

# next
# Jumps to the next iteration of the most internal loop. 
# Similar to Java's 'continue'.
for index in 0...10
  if (index % 2).eql?(0)
    next;
  end
  puts("For: Current index is #{index}")
end

# redo
# Restarts this iteration of the most internal loop, without checking loop condition.
# Restarts yield or call if called within a block.
for index in 0...10
  random_number = rand(10)
  if (random_number % 2).eql?(0)
    puts("random_number is #{random_number}")
    redo;
  end
  puts("For: Current index is #{index}")
end

# retry
# Available when 'raise'(exception) and 'rescue'(catch) takes place.
# Usually runs inside the 'rescue' scope.
for index in 0...5
  begin
    random_number = rand(5)
    if random_number > 2
      puts("random_number is #{random_number}")
      raise
    end
  rescue => exception
    retry
  end
  puts("For: Current index is #{index}")
end