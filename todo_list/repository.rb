class Repository
  def initialize
    @tasks = []
  end

  def create(task) # expect this to be a Task instance
    @tasks.push(task)
  end

  def destroy(index)
    @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end

  def all
    @tasks
  end
end
