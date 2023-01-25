puts 'How old are you??'

age = gets.chomp.to_i

if age >= 150
  puts 'you must be dead!'
elsif age > 17
  puts 'you can vote!!'
else
  puts "you're too young!!"
end
