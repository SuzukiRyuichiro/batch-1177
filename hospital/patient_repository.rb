require 'pry-byebug'
require 'csv'
require_relative 'patient'
require_relative 'room_repository'

class PatientRepository
  def initialize(csv_file_path, room_repo)
    @room_repo = room_repo
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    load_csv
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    save_csv
  end

  def save_csv
    # TODO
  end

  def load_csv
    # iterate over each row
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # instantiate the patient
      row[:cured] = row[:cured] == 'true'
      row[:id] = row[:id].to_i
      # put them into @patients array
      patient = Patient.new(row)
      @patients << patient

      # find a room with the id (row[:room_id])
      room = @room_repo.find(row[:room_id].to_i)
      # call the .add_patient method onto that room with the patient we just re-instantiated
      room.add_patient(patient)
    end
    # Assign next id to be ID after the last row of the csv
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end

csv_file_path = File.join(__dir__, './rooms.csv')
room_repo = RoomRepository.new(csv_file_path)

csv_file_path = File.join(__dir__, './patients.csv')
patient_repo = PatientRepository.new(csv_file_path, room_repo)

yonela = Patient.new(name: 'yonela')
kirsty = Patient.new(name: 'kirsty')
patient_repo.create(yonela)
patient_repo.create(kirsty)

binding.pry

puts ''
