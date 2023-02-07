require_relative 'models/patient'
require_relative 'models/room'

scooter = Patient.new({ name: 'scooter', cured: true })
ryan = Patient.new({ name: 'ryan', cured: true })
kirsty = Patient.new({ name: 'kirsty', cured: true })
jess = Patient.new({ name: 'jess', cured: true })

room = Room.new({ capacity: 3 })

begin
  room.add_patient(scooter)
  room.add_patient(ryan)
  room.add_patient(kirsty)
  room.add_patient(jess)
rescue Room::FullRoom => e
  puts e.message
end

puts "#{ryan.name} is in a room with #{ryan.room.patients.reject { |patient| patient == ryan }.map(&:name).join(', ')}"
