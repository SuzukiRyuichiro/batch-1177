require 'pry-byebug'
require 'csv'
require_relative '../models/patient'

# for this
require_relative '../repositories/room_repository'

class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @patients = []
    @room_repository = room_repository
    @next_id = 1
    load
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id  += 1
    save # TODO
  end

  private

  def save
    # THIS IS A TODO DURING THE CHALLENGE
  end

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:cured] = row[:cured] == 'true'
      row[:id] = row[:id].to_i
      room = @room_repository.find(row[:room_id].to_i) # TODO: get room based on ID
      patient = Patient.new(row)
      room.add_patient(patient)
      @patients << patient
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end

# Play ground

rooms_file_path = File.join(__dir__, '../data/rooms.csv')
room_repo = RoomRepository.new(rooms_file_path)

file_path = File.join(__dir__, '../data/patients.csv')
patient_repo = PatientRepository.new(file_path, room_repo)

# see if the auto increment works
new_patient = Patient.new(name: 'josh')

