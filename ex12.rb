require 'open-uri'

open("http://ruby.learncodethehardway.org/book/ex12.html") do |f|
  f.each_line {|line| puts line}
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.content_encoding
  puts f.last_modified
end