# Method
def show_life(meaning="do nothing", motivation="Nothing")
  puts("The meaning of my life is to #{meaning}.\n#{motivation} drives me to go on.")
  return meaning.length > 10 ? "NONE" : "MEANING"
end

# result_one = show_life("find a way to die painlessly", "Money")
# result_two = show_life()

# puts("#{result_one}\n#{result_two}")


# Variable parameter
# Takes any number of parameters
# Similar to '...args' from JS.
def count_parameters (*param)
  puts("Number of parameters in the method, #{param.length}.\n#{param}")
end

# count_parameters 2, 3, 5, 6, "Hi", "Bye", ["Higurashi", "Naku"]
# count_parameters 


# Class method
# Similar to Java class method.
class Chunithm
  def select_course
    puts("'World End' course has been selected.")
  end
  def select_ticket
    puts("'Limited Time 7 Stage' ticket has been chosen.")
  end
  def select_music
    puts("'World Vanquisher' has been selected.")
  end
end

# chunithm = Chunithm.new
# chunithm.select_course
# chunithm.select_ticket
# chunithm.select_music


# alias
# Create a second name for the method or variable.
# Provide more 'expressive' options, using the class 
# or to help 'override' methods and change the behavior
# of the class or object.
# Format: alias 'new name' 'old name'
class Chunithm
  def select_music
    puts("'World Vanquisher' has been selected.")
  end
  alias choose_music select_music
end

# chunithm = Chunithm.new
# chunithm.choose_music

# undef
# This cancels the method definition. 
# An undef cannot appear in the method body.
class Chunithm
  def select_music
    puts("'World Vanquisher' has been selected.")
  end
  alias choose_music select_music
  undef choose_music
end

chunithm = Chunithm.new
chunithm.select_music
chunithm.choose_music