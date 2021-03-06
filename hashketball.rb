require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |outer_key, outer_value|
    outer_value.each do |inner_key, inner_value|
      if inner_key == :players
        inner_value.each do |inner_array|
          if player_name == inner_array[:player_name]
            return inner_array[:points]
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |outer_key, outer_value|
    outer_value.each do |inner_key, inner_value|
      if inner_key == :players
        inner_value.each do |inner_array|
          if player_name == inner_array[:player_name]
            return inner_array[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |outer_key, outer_value|
    if outer_value[:team_name] == team_name
      return outer_value[:colors]
    end
  end
end

def team_names
  game_hash.each_with_object([]) do |(outer_key, outer_value), team_names|
    team_names << outer_value[:team_name]
  end
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |outer_key, outer_value|
    if outer_value[:team_name] == team_name
      outer_value.each do |inner_key, inner_value|
        if inner_key == :players
          inner_value.each do |inner_array|
            numbers << inner_array[:number]
          end
        end
      end
    end
  end
  numbers
end

def player_stats(player_name)
  game_hash.each do |outer_key, outer_value|
    outer_value.each do |inner_key, inner_value|
      if inner_key == :players
        inner_value.each do |inner_array|
          if player_name == inner_array[:player_name]
            return inner_array
          end
        end
      end
    end
  end
end

def rebounds_scored(player_name)
  game_hash.each do |outer_key, outer_value|
    outer_value.each do |inner_key, inner_value|
      if inner_key == :players
        inner_value.each do |inner_array|
          if player_name == inner_array[:player_name]
            return inner_array[:rebounds]
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  player_to_return = ""
  game_hash.each do |outer_key, outer_value|
    outer_value.each do |inner_key, inner_value|
      if inner_key == :players
        inner_value.each do |inner_array|
          if shoe_size(inner_array[:player_name]) > biggest_shoe
            biggest_shoe = shoe_size(inner_array[:player_name])
            player_to_return = inner_array[:player_name]
          end
        end
      end
    end
  end
  rebounds_scored(player_to_return)
end








