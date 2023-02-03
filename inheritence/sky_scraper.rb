require_relative 'building'

class SkyScraper < Building
  attr_reader :categories

  def initialize(name, width, length, height)
    super(name, width, length) # calling initialize of Building
    @height = height
    @categories = ["super skyscraper", "low scraper"]
  end

  def type_of_owner
    if @height > 50
      # self refers to the instance .type_of_owner is called on
      "this #{self.capitalize_name} is a sky scraper for Spider-man"
    else
      "this #{self.capitalize_name} is a sky scraper for the beginners"
    end
  end

  def add_category(new_category)
    @categories << new_category
  end

  def capitalize_name
    @name.capitalize
  end
end
