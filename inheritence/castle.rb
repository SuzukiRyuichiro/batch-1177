require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_accessor :butler

  def initialize(name, length, width)
    super(name, length, width) # calling initialize of Building
    @butler = Butler.new(self, "Harry")
  end

  def self.categories # can be only called by Castle.categories
    return ["Medieval", "Norman", "Ancient"]
  end

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 500 # calls Building's floor_area and add extra to that returning value
  end
end
