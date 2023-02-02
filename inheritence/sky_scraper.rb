require_relative 'building'

class SkyScraper < Building

  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      "this #{self.capitalize_name} is a sky scraper for Spider-man"
    else
      "this #{self.capitalize_name} is a sky scraper for the beginners"
    end
  end

  def capitalize_name
    @name.capitalize
  end
end
