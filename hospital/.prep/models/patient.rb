class Patient
  attr_reader :name
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
  end

  def cured?
    @cure
  end

  def cure!
    @cure = true
  end
end
