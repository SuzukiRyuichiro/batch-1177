require_relative 'router'
require_relative 'controller'
require_relative 'repository'

repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)

# Start of the application
router.run
