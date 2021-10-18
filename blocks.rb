# yield statement
# A method holds/ possesses the given parameters
# Block: A single line of a code or a scope of a method.
def even_num(&extra)
  yield 1..10, 555, 777
  puts("in the method")
  yield nil, true, false, "None"
  extra.call
end

even_num {
  |*el| puts("Yield has been given, #{el}")
}

# BEGIN & END Blocks
END {
  puts("this is the end part.")
}

BEGIN {
  puts("Welcome to the beginning part.")
}

puts("main part is HERE.")

def read_module
  puts("#{__FILE__} has been loaded!!")
end