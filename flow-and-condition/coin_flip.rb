puts "heads or tails??"

user_choice = gets.chomp.downcase

# randomly choose heads or tails
coin = ["heads", "tails"].sample

result = user_choice == coin ?  "win" : "lose"

puts "result was you #{result}"
