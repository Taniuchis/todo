require 'csv'
class TodoList < ApplicationRecord
	belongs_to :user
	has_many :todo_tasks, dependent: :destroy

	def self.all_todo_list_task
    #TodoList.joins("JOIN todo_tasks ON todo_tasks.todo_list_id = todo_lists.id")
    #TodoList.connection.select_all("Select content from todo_tasks where todo_tasks.todo_list_id = todo_lists.id")  
		#TodoList.joins(:todo_tasks).select('todo_tasks.content')  
		#TodoTask.joins(:todo_lists)
		#TodoList.joins(:todo_tasks)
		#TodoTask.joins(:todo_lists).where(todo_list_id: {value: '1'})
		#TodoList.joins(:todo_tasks).select('todo_tasks.content')
		 #TodoList.select(:'todo_tasks.content').joins(:todo_tasks)
		# TodoList.joins(:todo_tasks).select(todo_tasks.content as content)
		#TodoList.joins(:todo_tasks).select("todo_lists.*, todo_tasks.content as content").where('todo_tasks.todo_list_id = todo_lists.id')
    ##TodoList.select('todo_lists.*, todo_tasks.content as content').or.where('todo_lists.id > 0')
    #TodoList.joins(:todo_tasks).select("todo_lists.*, todo_tasks.content as content").where('todo_tasks.todo_list_id = todo_lists.id').or.(TodoList.joins('LEFT JOIN todo_tasks ON todo_tasks.todo_list_id = todo_lists.id'))
	TodoList.left_joins(:todo_tasks).select("todo_lists.*, todo_tasks.content as task").where(
  "todo_lists.id > 0 OR
   todo_tasks.todo_list_id = todo_lists.id"
   )

  end
  def self.all_todo_list 
  	TodoList.all
  end
	def self.to_csv
   # attributes = %w{title description}
   #  CSV.generate(headers: true) do |csv|
   #    csv << attributes
   #    all.each do |todo|
   #      csv << attributes.map{ |attr| todo.send(attr) }
   #    end
   #  end
 

  CSV.generate do |csv|
    columns = %w(id title description task)
    csv << columns.map(&:humanize)
    all_todo_list_task.each do |student|
      csv << student.attributes.values_at(*columns)
    end
  end
 end

 # CSV.generate do |csv|
 #    columns = %w(title description content)
 #    csv << columns.map(&:humanize)
 #    all_todo_list.each do |student|
 #      csv << student.attributes.values_at(*columns)
 #      all_todo_list_task.each do |task|
 #      	 csv << task.attributes.values_at(*columns)
 #      end
 #    end
 #  end
 


end
