require_relative 'view'
require_relative 'task'

class Controller # Orchestraits all actions
  def initialize(repository) # we expect a repository instance
    @repository = repository
    @view = View.new
  end

  def list
    display_list
  end

  def add
    # ask the user for the name of the task (view)
    name = @view.ask_for_name
    # make a new instance of task
    new_task = Task.new(name)
    # tell the repo to save that task
    @repository.create(new_task)
  end

  def remove
    # list all the tasks with numbers
    display_list
    # ask the user for a number
    index_to_delete = @view.ask_for_index
    # delete the task from the DB (repo)
    @repository.destroy(index_to_delete)
  end

  def mark_as_done
    # list all the tasks with numbers
    display_list
    # ask the user for a number
    index_to_update = @view.ask_for_index
    # ask the repository to get us a task instance
    task_to_update = @repository.find(index_to_update) # gets us a Task instance
    # we update the state of the task
    task_to_update.mark_as_done!
  end

  private

  def display_list
    # has to get all the tasks from the repo
    tasks = @repository.all
    # ask view to display them nicely
    @view.display(tasks)
  end
end
