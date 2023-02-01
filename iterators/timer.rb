def timer
  start_time = Time.now
  # few seconds
  yield if block_given?
  puts "Time elapsed: #{Time.now - start_time} seconds"
end

# timer do
#   puts "we are inside the block! wohoooo!"
#   sleep(2)
#   puts "Sleep is done!!!!"
# end

# timer

def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}" # John LENONN
  greeting_message = yield(full_name)
  puts greeting_message.upcase
end

greet('john', 'lennon') do |name|
  "Hola #{name}, you look good today"
end

greet('paul', 'mac') do |name|
  "Hey #{name} don't let me down"
end

def test_proc(param, proc)
  puts param
  yield
  proc.call
end

test_proc('this is from the method', proc { puts 'this is proc' }) do
  puts 'this is yield (block)'
end
