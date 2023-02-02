class Butler
  def initialize(castle, name)
    @name = name
    @castle = castle # We want @castle to store an instance of Castle.
  end

  def clean_castle
    puts "#{@castle.name} is cleaned! by #{@name}"
  end
end
