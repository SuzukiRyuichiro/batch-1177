require_relative 'car'

red_car = Car.new('red')

puts 'before repaint'
p red_car

red_car.repaint!('yellow')
puts 'after repaint'
p red_car
