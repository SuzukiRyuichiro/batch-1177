price_to_find = rand(1..5)

choice = 0 # initializing the value

# until the user guess the price right, prompt user to type a price
until price_to_find == choice # until the user guess the price right
  puts "guess the price!!!"
  choice = gets.chomp.to_i
end

puts "you guessed it right! it's $#{price_to_find}!!"
