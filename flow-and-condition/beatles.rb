beatles = ["john", "ringo", "paul", "george", "yoko"]

# beatles.each_with_index do |beatle, index|
#   puts "I am looking at index #{index}"
#   puts "#{beatle} is in the Beatles"
# end

# beatles.each do |beatle|
#   puts "#{beatle} is in the Beatles"
# end

# beatles.each { |beatle| puts "#{beatle} is in the Beatles" }

# for beatle in beatles
#   puts "#{beatle} is in the Beatles"
# end

(1..10).to_a.each do |num|
  num += 10
  # whatever you want to do
  puts num.to_f / 10
end
