
# for index in 0...musicians.length
#   musician = musicians[index]
#   puts "#{index + 1} - #{musician}"
#   # 1 - David Gilmour
# end

# for musician in musicians
#   puts "Hello #{musician}"
# end

# def upcase_and_add_exclamation(word)
#   return "#{word.upcase}!!"
# end

# def a_method(array_of_something)
#   array_of_something.each do |element|
#     element = upcase_and_add_exclamation(element)
#     puts "Hello #{element}"
#   end
# end

# a_method(musicians)
# a_method(["Benedict Camburbatch", "Hugh Grant", "Brad Pitt", "Leo"])

# upcased_musicians = musicians.map do |musician|
#   musician.upcase
# end

# firstname_musicians = musicians.each do |musician|
#   puts musician.split[0]
# end

# firstname_musicians = musicians.map do |musician|
#   musician.split[0]
# end

# puts "mapped musicians"
# p upcased_musicians

# puts "first_names"
# p firstname_musicians

# count how many Davids
# david_count = musicians.count do |musician|
#   musician.include?("David")
# end

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'David Bob', "Ben David", "Davidson John"]

# davids = musicians.select do |musician|
#   # first_name = musician.split[0]
#   # first_name == 'David'
#   musician.start_with?('David ')
# end

# puts "original musicians"
# p musicians

# # puts "this many david"
# # p david_count

# puts "davids"
# p davids

upcased_musicians = musicians.map { |musician| musician.upcase }
