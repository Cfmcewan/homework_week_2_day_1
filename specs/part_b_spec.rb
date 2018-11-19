# # Part B
# # Now we would like you to make a class that represents a sports team.
# #
# # Make a class to represent a Team that has the properties Team name (String),
# Players (array of strings) and a Coach (String).
# # For each property in the class make a getter method than can return them.
# # Create a setter method to allow the coach's name to be updated.
# # Refactor the class to use attr_reader or attr_accessor instead of your own
# getter and setter methods.
# # Create a method that adds a new player to the players array.
# # Add a method that takes in a string of a player's name and checks to see if
# they are in the players array.
# # Add a points property into your class that starts at 0.
# # Create a method that takes in whether the team has won or lost and updates
# the points property for a win.


require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b.rb')

class Sports_Team_Test < MiniTest::Test

  def setup

    @sportsteam = Sports_Team.new("Dartford", ["Tom", "Sam", "Laura", "Anna"], "Steve", 0)

  end

def test_get_name()
  team_name = @sportsteam.name()
  assert_equal("Dartford", team_name)
end

def test_get_players()
  players = @sportsteam.players()
  assert_equal(["Tom", "Sam", "Laura", "Anna"], players)
end

def test_get_coach()
  coach = @sportsteam.coach()
  assert_equal("Steve", coach)
end

def test_get_points()
  points = @sportsteam.points()
  assert_equal(0, points)
end

# # Create a setter method to allow the coach's name to be updated.

def test_set_coach_name()
  @sportsteam.coach = "Tony"
  coach = @sportsteam.coach()
  assert_equal("Tony", coach)
end

# # Create a method that adds a new player to the players array.

def test_add_new_player()
  new_array = @sportsteam.players.push("Lisa")
  assert_equal(["Tom", "Sam", "Laura", "Anna", "Lisa"], new_array)
end

# # Add a method that takes in a string of a player's name and checks to see if
# they are in the players array.

def test_check_name_in_players()
  name_included = @sportsteam.players.include?("Anna")
  assert_equal(true, name_included)
end

# # Add a points property into your class that starts at 0.

# def test_add_points_property()
#     points_gained = @points(0)
#     assert_equal(0, points_gained)
#   end

# # Create a method that takes in whether the team has won or lost and updates
# the points property for a win.

def test_games_won()
  new_points = @sportsteam.points += 1
  assert_equal(1, new_points)
end

def test_games_lost()
  new_points = @points
  assert_equal(@points, new_points)
end

end
