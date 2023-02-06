class Room
  attr_reader :capacity
  attr_accessor :id

  class FullRoom < Exception
  end

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:paatients] || []
  end

  def full?
    @capacity <= @patients.length
  end

  def add_patient(patient)
    # expects a patient instance
    # Check if there is a space for new patient
    raise FullRoom, 'Room is full!' if full?

    # assign room attribute for that patient
    patient.room = self
    @patients << patient
  end
end
