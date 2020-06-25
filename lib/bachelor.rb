require "pry"

def get_first_name_of_season_winner(data, season)
  name = ""
  data[season].each do |contestant, info|
#      binding.pry
    if contestant["status"] == "Winner"
        name = contestant["name"]
        name = name.split(" ")[0].to_s
    end
#       binding.pry
  end
  name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestants|
#      binding.pry
      contestants.each do |person, info|
#        binding.pry
        if person["occupation"] == occupation
          name = person["name"]
#        name = name.split(" ")[0].to_s
        end
#       binding.pry
      end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  number = 0
  data.each do |season, contestants|
#      binding.pry
      contestants.each do |person, info|
#        binding.pry
        if person["hometown"] == hometown
          number += 1
#        name = name.split(" ")[0].to_s
        end
#       binding.pry
      end
  end
  number
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, contestants|
#      binding.pry
      contestants.each do |person, info|
#        binding.pry
        if person["hometown"] == hometown
          occupation << person["occupation"]
#        name = name.split(" ")[0].to_s
        end
#       binding.pry
      end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  array = []
  number = 0
  data[season].each do |contestant, info|
#      binding.pry
    array << contestant["age"].to_f
#       binding.pry
  end
  number = array.inject{ |sum, el| sum + el }.to_f / array.size
  number.round
end
