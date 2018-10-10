class TodoTasksController < ApplicationController
	before_action :set_todo_list

	def create
	 @todo_task = @todo_list.todo_tasks.create(todo_task_params)
	 redirect_to @todo_list
	end

	def destroy
	 @todo_task = @todo_list.todo_tasks.find(params[:id])
	 if @todo_task.destroy
	  flash[:success] = "Todo List task was deleted."
	 else
	  flash[:error] = "Todo List task could not be deleted."
	 end
	 redirect_to @todo_list 
	end

	private

	def set_todo_list
		@todo_list = TodoList.find(params[:todo_list_id])
	end
	def todo_task_params
		params[:todo_task].permit(:content)
	end

end
