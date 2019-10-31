require "pry"

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, 
         :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, 
         :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, 
         :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, 
        :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, 
        :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
    }, 
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Purple", "Turquoise"],
      :players => [
        {:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, 
         :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, 
         :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
        {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, 
         :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, 
         :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, 
         :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
    }
  }
end

def find_player_value(attribute, lookup_key, lookup_value)
  game_hash.each do |key, value|
    value[:players].each do |player_hash|
      return player_hash[attribute] if player_hash[lookup_key] == lookup_value
    end
  end
end

def num_points_scored(player_name)
  find_player_value(:points, :player_name, player_name)
end

def shoe_size(player_name)
  find_player_value(:shoe, :player_name, player_name)
end

def team_colors(team_name)
  game_hash.each do |key, value|
    if value[:team_name] == team_name
      return value[:colors]
    end
  end
end

def team_names
  team_array = []
  game_hash.each do |key, value|
    team_array << value[:team_name]
  end
  team_array
end

def player_numbers(team_name)
  num_array = []
  game_hash.each do |key, value|
    if value[:team_name] == team_name
      value[:players].each do |element|
        num_array << element[:number]
      end
    end
  end
  num_array
end

def player_stats(player_name)
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:player_name] == player_name
        return element.reject { |k,v| v == player_name}
      end
    end
  end
end

def find_max(attribute)
  #returns highest specified attribute
  attribute_array = []
  game_hash.each do |key, value|
    value[:players].each do |element|
      attribute_array << find_player_value(attribute, element[:player_name])
    end
  end
  max_value = attribute_array.
end

def big_shoe_rebounds
  game_hash.each do |key, value|
    return value[:players].max_by{|e| e[:shoe]}[:rebounds]
  end
end

#BONUS QUESTIONS

def most_points_scored
  pp find_max(:points)
end

def winning_team
#returns team with most points scored
end

def player_with_longest_name
#returns player with longest name 
end

#SUPER BONUS

def long_name_steals_a_ton?
#returns true is plaayer with the longest name had the most steals 
end









