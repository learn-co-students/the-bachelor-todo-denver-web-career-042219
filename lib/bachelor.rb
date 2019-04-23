require "pry"

def get_first_name_of_season_winner(data, season)
  data.find do |season_number, info|
    if season_number == season
      info.find do |info, contestant_info|
        if info["status"] == "Winner"
          name =  info["name"].split(" ")
          return name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.find do |season_number, info|
    info.find do |info , contestant_info|
      if info["occupation"] == occupation
        return info["name"]
    end
  end
end
end



def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  # code here
  data.each do |data_season, participant_stats|
    participant_stats.each do |category|
      if category["hometown"] == hometown
        hometown_count = hometown_count + 1
    end
  end
end
puts hometown_count
return hometown_count
end

=begin
 hometown_count = 0
data.each {|data_season, participant_stats|
  participant_stats.each {|category|
    if category["hometown"] == hometown ;
      hometown_count = hometown_count + 1
    end
  }
}
puts hometown_count
return hometown_count
end
=end

def get_occupation(data, hometown)
  # code here
  data.find do |data_season, participant_stats|
    participant_stats.find do |k , v|
      if k["hometown"] == hometown
        return k["occupation"]
    end
  end
end
end


def get_average_age_for_season(data, season)
  # code here
    ages = []
  data.find do |data_season, participant_stats|
    if data_season == season
      participant_stats.each do |category|
        ages << category["age"].to_i
      end
    end
  end
  average_ages = ages.inject{ |sum, el| sum + el }.to_f / ages.size
  average_ages = average_ages.round
  puts average_ages
  return average_ages
end
