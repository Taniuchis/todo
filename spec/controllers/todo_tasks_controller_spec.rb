require 'rails_helper'

describe TodoTasksController do
	context "valid Controller" do
		let (:todolist) { build(:todo_list) }
	# it 'ok' do
	# get :index
  # expect(response).to render_template("index")
	# end

	# it "access method new succes" do
	# 	sign_in
	# 	assert_generates "/todo_lists", { :controller => "todo_tasks", :action => "index" }	
	# end

	# it "access method new succes" do
	#  	sign_in
	#  	params = todolist.id 
	#  	get :index, todo_list.id
  #end
	end

end