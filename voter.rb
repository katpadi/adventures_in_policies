# Just a sample voter class
class Voter
  attr_accessor :name, :age, :resident_since
  def initialize(name, age)
    @name = name 
    @age = age
    @resident_since = (Date.today - 2.year)
  end
end