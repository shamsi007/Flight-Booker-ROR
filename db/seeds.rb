# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.delete_all
Airport.create!([
								{name: "SFO"},
								{name: "ATL"},
								{name: "JFK"},
								{name: "ORD"}
								])
t = Time.now
hours = 60
days = 60*60*24
def randomize
	Random.new.rand(11.1..15.9)
end
Flight.delete_all
20.times do 
	Flight.create!([
								 	{start_location: "SFO", 
								 	 end_location: "ATL", 
								 	 start_time: t + randomize*days,
								 	 duration: 6*hours
								 	},
								 	{start_location: "SFO", 
								 	 end_location: "JFK", 
								 	 start_time: t + randomize*days,
								 	 duration: 6*hours
								 	},
								 	{start_location: "SFO", 
								 	 end_location: "ORD", 
								 	 start_time: t + randomize*days,
								 	 duration: 5*hours
								 	}
								])
end
20.times do 
	Flight.create!([
								 	{start_location: "ATL", 
								 	 end_location: "SFO", 
								 	 start_time: t + randomize*days,
								 	 duration: 6*hours
								 	},
								 	{start_location: "ATL", 
								 	 end_location: "JFK", 
								 	 start_time: t + randomize*days,
								 	 duration: 3*hours
								 	},
								 	{start_location: "ATL", 
								 	 end_location: "ORD", 
								 	 start_time: t + randomize*days,
								 	 duration: 3*hours
								 	}
								])
end
20.times do 
	Flight.create!([
								 	{start_location: "JFK", 
								 	 end_location: "ATL", 
								 	 start_time: t + randomize*days,
								 	 duration: 3*hours
								 	},
								 	{start_location: "JFK", 
								 	 end_location: "SFO", 
								 	 start_time: t + randomize*days,
								 	 duration: 6*hours
								 	},
								 	{start_location: "JFK", 
								 	 end_location: "ORD", 
								 	 start_time: t + randomize*days,
								 	 duration: 2*hours
								 	} 
								])
end
20.times do 
	Flight.create!([
								 	{start_location: "ORD", 
								 	 end_location: "ATL", 
								 	 start_time: t + randomize*days,
								 	 duration: 3*hours
								 	},
								 	{start_location: "ORD", 
								 	 end_location: "JFK", 
								 	 start_time: t + randomize*days,
								 	 duration: 2*hours
								 	},
								 	{start_location: "ORD", 
								 	 end_location: "SFO", 
								 	 start_time: t + randomize*days,
								 	 duration: 5*hours
								 	}
								 ])
end