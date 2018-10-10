class TodoList < ApplicationRecord
	belongs_to :user
	has_many :todo_tasks
end
