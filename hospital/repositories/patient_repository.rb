require 'pry-byebug'
require 'csv'
require_relative '../models/patient'

class PatientRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    load
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id  += 1
    save
  end

  def save
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << %w[id name cured room_id]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured?, '']
      end
    end
  end

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:cured] = row[:cured] == 'true'
      row[:id] = row[:id].to_i
      row[:room] # TODO: get room based on ID
      patient = Patient.new(row)
      @patients << patient
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end


rooms_file_path = File.join(__dir__, '../data/rooms.csv')
room_repo = RoomRepository.new(rooms_file_path)


file_path = File.join(__dir__, '../data/patients.csv')
patient_repo = PatientRepository.new(file_path)

print 'name > '
name = gets.chomp

new_patient = Patient.new(name: name)
patient_repo.create(new_patient)

p patient_repo
