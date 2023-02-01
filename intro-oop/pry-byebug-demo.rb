require 'pry-byebug'

(1..10).to_a.each do |num|
  binding.pry
  puts "The number is #{num}!!"
end
