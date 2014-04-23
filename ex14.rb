greet = ARGV.first
user = ARGV[1]

prm = "Type Response Here >> "

puts "#{greet} #{user}, I am the #{$0} script speaking."
puts "A few quick questions..."

puts "First, do you like what's going on?"
print prm
lik = STDIN.gets.chomp()

puts "Where are you from #{user}?"
print prm
whr = STDIN.gets.chomp()

puts "Are you single?"
print prm
sin = STDIN.gets.chomp()

puts <<MESS
Alright #{user}, you said #{lik} about liking this questioning!
You are from #{whr}, AND responded "#{sin}" when asked ur relationship status.
How about a coffee sometime, huh?
MESS
