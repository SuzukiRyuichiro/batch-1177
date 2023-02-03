class View
  def display(tasks) # array of Task instances
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - [#{task.done? ? 'X' : ' '}] #{task.name}"
    end
  end

  def ask_for_name
    puts "What's your task?"
    gets.chomp
  end

  def ask_for_index
    puts "What's the number"
    gets.chomp.to_i - 1
  end
end
