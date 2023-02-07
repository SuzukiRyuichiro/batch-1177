class Patient
  attr_reader :name
  attr_accessor :room, :id # allows us to read and write into @room

  def initialize(attributes = {})
    # attributes is a hash with all the info needed to instantiate a patient
    # attributes = { name: "Scooter" }
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end

  def cure!
    @cured = true
  end

  def cured?
    @cured
  end
end
