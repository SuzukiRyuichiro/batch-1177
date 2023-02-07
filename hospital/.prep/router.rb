class Router
  def initialize
    @running = true
  end

  def run
    while @running
      menu
      choice gets.chomp.to_i
      case choice
      when 1 then @patients_controller.add
      when 2 then @rooms_controller.add
      end
    end
  end

  private

  def menu
    puts '1 - add a patient'
    puts '2 - create a room'
  end
end
