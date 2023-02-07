require_relative 'patient'
require 'pry-byebug'

class Room
  attr_accessor :id
  attr_reader :capacity

  class FullRoom < StandardError
  end

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patient] || [] # expect this to be instances of Patient
  end

  def full?
    @patients.length >= @capacity
  end

  def add_patient(patient) # expects an instance of Patient
    # check if the room is full, before adding that patient
    raise FullRoom, 'Room is full!!!' if full?

    patient.room = self
    @patients << patient unless full?
  end
end

