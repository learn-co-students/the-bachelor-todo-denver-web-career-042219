require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do | stats |
    if stats["status"] == "Winner"
      return stats["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | season, contestants |
    contestants.each do | stats |
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do | season, contestants |
   contestants.each do | stats | 
    if stats["hometown"] == hometown
      counter += 1
    end 
   end
  end
 counter
end

def get_occupation(data, hometown)
  occupation_arr = []
  data.each do | season, contestants |
    contestants.each do | stats |
      if stats["hometown"] == hometown
        occupation_arr << stats["occupation"]
      end
    end
  end
 occupation_arr.first
end
  

def get_average_age_for_season(data, season)
  ages_arr = []
  data.each do | key, contestants |
   if key ==  season
    contestants.each do | stats |
     ages_arr << stats["age"].to_f
     end
    end 
   end
  new_arr = ages_arr.sum / ages_arr.size
 return new_arr.round
end
