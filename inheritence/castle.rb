require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_accessor :butler

  def initialize(name, length, width)
    super(name, length, width) # calling initialize of Building
    @butler = Butler.new(self, "Harry")
  end

  def self.categories
    return ["Medieval", "Norman", "Ancient"]
  end

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 500
  end
end
