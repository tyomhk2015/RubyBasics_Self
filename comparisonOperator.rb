# Comparisons
one = 1
two = 2
three = 3
none = nil

one_two = one <=> two
three_one = three <=> one
none_none = none <=> none
none_two = none <=> two
# puts(one_two)
# puts(three_one)
# puts(none_none)
# puts(none_two)

# ===
# Similar to a Set and the member of the Set.
result = (10...33) === 22
# puts(result)

# .eql?
# Similar to JS '===', checks value and the type.
eql_result_decimal = 4.eql?(4.0)
eql_result_no_decimal = 4.eql?(4)
eql_result_string = 4.eql?('4')
# puts(eql_result_decimal)
# puts(eql_result_no_decimal)
# puts(eql_result_string)

# .. vs ... Range
# .. from start point to end point inclusive.
# ... from start point to end point exclusive.
inclusive = (1..10)
$exclusive = (1...10)
# inclusive.each do |el|
#   if(el > inclusive.size - 1)
#     puts(el)
#   end
# end
# $exclusive.each do |el|
#   if(el > $exclusive.size - 1)
#     puts(el)
#   end
# end

# defined? operator
# Similar to JS 'typeof'.
# puts(defined? inclusive)
# puts(defined? $exclusive)
# puts(defined? nil)
# puts(defined? puts)
# puts(defined? false)

# ::
# constants, instance methods and class methods defined
# within a class or module, to be accessed from anywhere
# outside the class or module.
COUNT = 0
module Sample
  COUNT = 99
  ::COUNT = 1
end
# puts(COUNT)
# puts(Sample::COUNT)
# puts(COUNT)