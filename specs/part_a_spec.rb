# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc)
# when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property
# of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string
# (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a.rb')

class Student_Test < MiniTest::Test

  def setup()
    @student = Student.new("Anna", "G10")
  end

def test_name()
  name = @student.name()
  assert_equal("Anna", name)
end

def test_cohort()
  cohort = @student.cohort()
  assert_equal("G10", cohort)
end

def test_change_name()
  @student.name = "Sam"
  name = @student.name()
  assert_equal("Sam", name)
end

def test_change_cohort()
  @student.cohort = "E10"
  cohort = @student.cohort()
  assert_equal("E10", cohort)
end

def test_can_talk()
  assert_equal("I can talk!", @student.can_talk())
end

def test_fave_language()
  # language = fave_language()
  lang = "Ruby"
  assert_equal("I love #{lang}", @student.fave_language())
end

end
