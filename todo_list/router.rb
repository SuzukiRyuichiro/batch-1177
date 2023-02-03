class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    done = false
    until done
      # print out what options are available
      puts '1 - list' # => controller.list
      puts '2 - add a task' # => controller.add
      puts '3 - remove a task'
      puts '4 - mark a task as done'
      puts '9 - quit the application'
      # get the user input
      print '> '
      choice = gets.chomp.to_i
      puts `clear`

      # based on that input, tell controller to run that action
      case choice
      when 1
        @controller.list
      when 2
        @controller.add
      when 3
        @controller.remove
      when 4
        @controller.mark_as_done
      when 9
        done = true
      else
        puts 'Wrong input'
      end

      puts '=' * 40
    end
  end
end
