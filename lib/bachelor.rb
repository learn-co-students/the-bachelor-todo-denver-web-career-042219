require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |name, name_data|
    if name["status"] == "Winner"
    
      name = name["name"].split(" ")
      return name[0]
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |season, season_data|
    season_data.each do |contestant_data|
        if contestant_data["occupation"] == occupation
          return contestant_data["name"]
      end
    end
  end
end




def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0 
  data.each do |season, season_data|
    season_data.each do |contestant_data|
        if contestant_data["hometown"] == hometown
          hometown_counter = hometown_counter + 1
        end
      end
    end
    return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |contestant_data|
        if contestant_data["hometown"] == hometown
          return contestant_data["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
  average_age = 0
  number_contestants = 0
  data[season].each do |contestant_data|
   age = contestant_data["age"].to_i
    average_age += age
    number_contestants += 1
  end
    average_age = average_age.to_i/number_contestants.to_f
    return average_age.round
end
