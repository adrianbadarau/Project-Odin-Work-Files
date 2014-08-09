# This class stores information about people
class Person
  attr_accessor :age, :name, :gender

  #create the Person object and store the name
  def initialize(name)
    @name = name
  end

  #Prints the person name to the screen
  def print_name
    puts "Person Called #{@name}"
  end
end