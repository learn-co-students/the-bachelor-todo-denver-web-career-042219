require 'pry'

# used find to speed up the process opposed to each
def get_first_name_of_season_winner(data, season)
  data.find do |data_season, participant_stats|
    if data_season == season
      participant_stats.find do |category|
        if category["status"] == "Winner"
         return category["name"].split.first
        end
      end
    end
  end
end


#season = "Season 10"

def get_contestant_name(data, occupation)
  data.each do |data_season, participant_stats|
    participant_stats.each do |category|
      if category["occupation"] == occupation
        puts category["name"]
        return category["name"]
      end
    end
  end
end


# tried writing it in single line style. could be shorter maybe but not sure you would want to
def count_contestants_by_hometown(data, hometown)
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


def get_occupation(data, hometown)
  data.find do |data_season, participant_stats|
    participant_stats.find do |category|
      if category["hometown"] == hometown
        puts category["occupation"]
        return category["occupation"]
      end
    end
  end
end


#this was a good one but finally got the return to round correctly after putting the () around it 
def get_average_age_for_season(data, season)
  ages_array = Array.new
  data.find do |data_season, participant_stats|
    if data_season == season
      participant_stats.each do |category|
        ages_array << category["age"].to_i
      end
    end
  end
  puts (ages_array.inject(&:+)/ages_array.size.to_f).round
  return (ages_array.inject(&:+)/ages_array.size.to_f).round
end





# shovel all the age keys into an array then work on it.

  # code here


=begin
data =
{"season 10":[
   {
      "name":"Tessa Horst",
      "age":"26",
      "hometown":"San Francisco, CA",
      "occupation":"Social Worker",
      "status":"Winner"
   },
   {
      "name":"Bevin Nicole Powers",
      "age":"28",
      "hometown":"Palo Alto, CA",
      "occupation":"Assistant",
      "status":"Week 8"
   },
   {
      "name":"Danielle Imwalle",
      "age":"25",
      "hometown":"Bethel, CT",
      "occupation":"Graphic Designer",
      "status":"Week 7"
   },
   {
      "name":"Amber Alchalabi",
      "age":"23",
      "hometown":"Sugar Land, TX",
      "occupation":"Teacher",
      "status":"Week 6"
   },
   {
      "name":"Stephanie Wilhite",
      "age":"23",
      "hometown":"Overland Park, KS",
      "occupation":"Project Manager",
      "status":"Week 5"
   },
   {
      "name":"Tina Wu",
      "age":"26",
      "hometown":"Los Angeles, CA",
      "occupation":"Medical student",
      "status":"Week 5"
   },
   {
      "name":"Kate Brockhouse",
      "age":"24",
      "hometown":"Charleston, SC",
      "occupation":"Boutique owner",
      "status":"Week 4"
   },
   {
      "name":"Nicole Clary",
      "age":"26",
      "hometown":"Charleston, SC",
      "occupation":"Sales Manager",
      "status":"Week 4"
   },
   {
      "name":"Stephanie Tipper",
      "age":"27",
      "hometown":"Folly Beach, SC",
      "occupation":"Organ donor coordinator",
      "status":"Week 4"
   },
   {
      "name":"Amanda Hackney",
      "age":"26",
      "hometown":"Dallas, TX",
      "occupation":"Financial analyst",
      "status":"Week 3"
   },
   {
      "name":"Erin Parker",
      "age":"24",
      "hometown":"Logansport, LA",
      "occupation":"Financial analyst",
      "status":"Week 3"
   },
   {
      "name":"Peyton Wright",
      "age":"24",
      "hometown":"Dallas, TX",
      "occupation":"Sorority recruiter",
      "status":"Week 3"
   },
   {
      "name":"Alexis Young",
      "age":"26",
      "hometown":"Southlake, TX",
      "occupation":"Attorney",
      "status":"Week 2"
   },
   {
      "name":"Susan Anderson",
      "age":"23",
      "hometown":"The Woodlands, TX",
      "occupation":"Boutique manager",
      "status":"Week 2"
   },
   {
      "name":"Tiffany Warren",
      "age":"28",
      "hometown":"Boston, MA",
      "occupation":"Medical equipment sales rep",
      "status":"Week 2"
   },
   {
      "name":"Blakeney Rowe",
      "age":"29",
      "hometown":"Birmingham, AL",
      "occupation":"Radio sales",
      "status":"Week 1"
   },
   {
      "name":"Candace DeCost",
      "age":"23",
      "hometown":"Hilton Head Island, SC",
      "occupation":"Waitress",
      "status":"Week 1"
   },
   {
      "name":"Catherine Warren",
      "age":"23",
      "hometown":"Lake Forest, IL",
      "occupation":"Former Miss Illinois",
      "status":"Week 1"
   },
   {
      "name":"Danielle Vallis",
      "age":"26",
      "hometown":"Bronx, NY",
      "occupation":"Attorney",
      "status":"Week 1"
   },
   {
      "name":"Jackie Topelli",
      "age":"23",
      "hometown":"Minneapolis, MN",
      "occupation":"Executive coordinator",
      "status":"Week 1"
   },
   {
      "name":"Jeanette Alvarez",
      "age":"27",
      "hometown":"Tampa, FL",
      "occupation":"Health care manager",
      "status":"Week 1"
   },
   {
      "name":"Jessica Devallo",
      "age":"32",
      "hometown":"New York, New York",
      "occupation":"Hedge fund analyst",
      "status":"Week 1"
   },
   {
      "name":"Linda Malek",
      "age":"33",
      "hometown":"Cuyahoga Falls, OH",
      "occupation":"Attorney",
      "status":"Week 1"
   },
   {
      "name":"Lindsay Smith",
      "age":"22",
      "hometown":"Lawrence, KS",
      "occupation":"Student",
      "status":"Week 1"
   },
   {
      "name":"Tiffany Forester",
      "age":"27",
      "hometown":"St. Louis Park, MN",
      "occupation":"Real estate sales/development",
      "status":"Week 1"
   }
]}

=end
