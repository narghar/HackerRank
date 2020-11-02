class Person
  attr_accessor :age

  def initialize(initialAge)
  # Add some more code to run some checks on initialAge
    if initialAge.negative?()
      initialAge = 0
      puts "Age is not valid, setting age to 0."
    end

    @age = initialAge
  end

  def amIOld()
  # Do some computations in here and print out the correct statement to the console
    case
      when age < 13
        puts "You are young."
      when age >= 13 && age < 18
        puts "You are a teenager."
      when age >= 18
        puts "You are old."
    end
  end

  def yearPasses()
  # Increment the age of the person in here
    @age += 1
  end
end
