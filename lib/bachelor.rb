def get_first_name_of_season_winner(data, season)
	winner = nil
	data.each do |seasons, info|
		if seasons == season
	  	info.each do |contestant|
	  		if contestant["status"] == "Winner"
	  			winner = contestant["name"].split[0]
	  		end
	  	end
	  	end
	end
	winner
end


def get_contestant_name(data, occupation)
	contestant_name = nil
	data.each do |seasons, info|
		info.each do |contestant|
			if contestant["occupation"] == occupation
				contestant_name = contestant["name"]
			end
		end
	end
	contestant_name
end


def count_contestants_by_hometown(data, hometown)
	counter = 0
	data.each do |seasons, info|
		info.each do |contestant|
  		  if contestant["hometown"] == hometown
  		  	counter += 1
  		  end
  		end
  	end

counter
end


def get_occupation(data, hometown)
	data.collect do |seasons, info|
		info.find do |contestant| 
			if contestant["hometown"] == hometown
		  	return contestant["occupation"]
		  	end
		end
	end
end

def get_average_age_for_season(data, season)
age = 0
count = 0
  data[season].each do |contestant|
    contestant.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end

   average_age = (age/count).round
return average_age
end
