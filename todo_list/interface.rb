require_relative 'task'
require_relative 'repository'
require_relative 'controller'

repo = Repository.new
controller = Controller.new(repo)

controller.add
controller.add

puts "before updating"
controller.list

controller.mark_as_done

puts "after updating"
controller.list

