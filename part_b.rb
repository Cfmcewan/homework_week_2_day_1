class Sports_Team

attr_accessor :name, :players, :coach, :points

def initialize(team_name, players, coach, points)
  @name = team_name
  @players = players
  @coach = coach
  @points = points
end
#
# def get_name()
#   return @name
# end
#
# def get_players()
#   return @players
# end
#
# def get_coach()
#   return @coach
# end

def get_points()
  return @points
end


# # Create a setter method to allow the coach's name to be updated.

def set_coach_name(new_name)
  @coach = new_name
end

# # Create a method that adds a new player to the players array.

def add_new_player(new_player)
  return @players.push(new_player)
end

# # Add a method that takes in a string of a player's name and checks to see if
# they are in the players array.

def check_name_in_players(player_name)
  return true if @players.include?(player_name)
end


# # Add a points property into your class that starts at 0.

def add_points_property(points_gained)
  @points = points_gained
  return @points
end

# # Create a method that takes in whether the team has won or lost and updates
# the points property for a win.

def games_won_or_lost(add_one_point)
  if add_one_point > 0
    return
    @points += add_one_point
  else
    add_one_point == 0
    return
    @points 
  end
end

end
