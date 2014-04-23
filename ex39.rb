# create a mapping of state to abbreviation
states = {
  'Victoria' => 'VIC',
  'New South Wales' => 'NSW',
  'Queensland' => 'QLD',
  'Northern Territory' => 'NT',
  'South Australia' => 'SA',
  'West Australia' => 'WA'
}

# create a basic set of states and cities in them
cities = {
  'VIC' =>  'Melbourne',
  'NSW' =>  'Sydney',
  'QLD' =>  'Brisbane',
  'NT'  =>  'Darwin'
}

# add cities for remaining states

cities['SA' ] =  'Adelaide'
cities['WA' ] =  'Perth'
#cities['ACT'] =  'Canberra'

# print out some cities
puts '-' * 30
puts 'VIC state has: ', cities['VIC']
puts 'WA state has:  ', cities['WA']

# print out some states
puts '-' * 30
puts 'Victoria is abbreviated as: ', states['Victoria']
puts 'New South Wales state is abbreviated as:  ', states['New South Wales']

# do it by using cities, then states hash
puts "-" * 35
puts 'Queensland has: ', cities[states['Queensland']]
puts 'Northern Territory has: ', cities[states['Northern Territory']]

# print all states' abbreviations
puts "-" * 28
for state, abbr in states
  puts "%s is abbreviated as %s" % [state, abbr]
end

# print all cities in all states
puts "-" * 33
for state, abbr in states
  puts "%s is abbreviated as %s and has %s" % [state, abbr, cities[abbr]]
end

puts "-" *29
# if state doesn't exist, handle it
state = states['Australian Capital Territory']
if not state
  puts "Sorry, Australian Capital Territory is not found in states"
end

city = cities['ACT'] || 'None found'
puts "The city for the state 'ACT' is: %s" % city
