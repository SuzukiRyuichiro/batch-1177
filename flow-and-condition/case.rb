puts "What do you want to do?"
action = gets.chomp

case action
when "read"
  puts "You are in READ mode"
when "write"
  puts "You are in WRITE mode"
when "exit"
  puts "Bye Bye"
else
  puts "Wrong action"
end

# if action == "read"
#   puts "read mode"
# elsif action == "write"
#   puts "write mode"
# elsif action == "exit"
#   puts "bye"
# else
#   puts "wrong!!!"
# end
