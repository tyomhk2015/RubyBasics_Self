class Life
  @@leftover_lifetime = 100 # Class variable
  def initialize (name, age, gender) # Similar to Java constructor
    @name = name # Method variable
    @age = age
    @gender = gender
  end
  def print_basic_info()
    puts "#@name\n#@age\n#@gender" # Similar to JS template literals
  end
  def calculate_leftover_lifetime()
    puts @@leftover_lifetime - @age
  end
end

first_life = Life.new("Redfield", 23, "M") # Similar to Java class initialization / Object creation.
first_life.print_basic_info
first_life.calculate_leftover_lifetime


class Death
  @@leftover_queue = 100
  def initialize()
    @queued_time = 20;
  end
  def calculate_rebirth_time(lived_time)
    puts @@leftover_queue - lived_time
  end
end

first_death = Death.new();
first_death.calculate_rebirth_time(33)