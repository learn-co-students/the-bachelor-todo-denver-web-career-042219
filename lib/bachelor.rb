require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = []
  data[season].each do |key, data|
  	if key["status"] == "Winner"
  		winner_name << key["name"]
  	end
  end
  string = winner_name[0]
  final = string.split(" ")
  final[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_data|
  	season_data.each do |contestant_data|
  		if contestant_data["occupation"] == occupation
  			return contestant_data["name"]
  		end
  	end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |season, season_data|
  	season_data.each do |contestant_data|
  		if contestant_data["hometown"] == hometown
  			hometown_counter += 1
  	  end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_data|
  	season_data.each do |contestant_data|
  		if contestant_data["hometown"] == hometown
  			return contestant_data["occupation"]
  		end
  	end
  end
end

# def get_average_age_for_season(data, season)
#   # code here
#   ages_of_contestants = []
#   data[season].each do |key, value|
#   		ages_of_contestants << key["age"]
#   end
#   age_numbers = []
#   ages_of_contestants.each do |i|
#   	age_numbers << i.to_i
#   end
#   sum = 0
#   count = 0
#   age_numbers.each do |i|
#   	sum += i
#   	count += 1
#   end
#   average = sum/count.to_f
#   average.round
# end





def get_average_age_for_season(data, season)
  # code here
  average_age = 0
  number_contestants = 0
  data[season].each do |contestant_data|
   age = contestant_data["age"].to_i
    average_age += age
    number_contestants += 1
  end
    average_age = average_age/number_contestants.to_f
    return average_age.round
end