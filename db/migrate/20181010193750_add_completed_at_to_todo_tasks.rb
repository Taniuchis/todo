class AddCompletedAtToTodoTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_tasks, :completed_at, :datetime
  end
end
