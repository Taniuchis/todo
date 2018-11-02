require 'rails_helper'
require 'spec_helper'

describe TodoListsController do

 let (:todolist) { build(:todo_list) }
 let (:user) { build(:user) }
#render_views
#this test is not necesary because rails have this test 
	it "redirects to the home page upon save" do
	  sign_in(user)
	  get :index
	  response.should render_template :index
	end

	 it 'ok' do
	 	sign_in
	 #	todo_lists = user.todo_list
	 # user = create(:user)
	 #      get :index
	 #      expect(response).to have_http_status(:ok)
	 #      expect(response).to render_template('index')
	 	#get :index
    #expect(response).to render_template('index')
	 end

	 it "should have a current_user" do
	 	sign_in
  	# note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
  	expect(sign_in).to_not eq(nil)
	 end

	 it "access method new succes" do
  		sign_in
  		get :new
  		expect(response).to be_success
	end

	it "access method new not succes because blocks unauthenticated access" do
		sign_in nil
		get :new
		expect(response).to_not be_success
	end

	 it "access method edit succes" do
	 	 #sign_in
	 	 #put :update, TodoList: todolist
    #  expect(response).to be_success
	 end 

	

# context "valid get show" do
# 	 # it 'ok' do
# 	 # 	get :show
#   #    expect(response).to have_http_status(:ok)
#   #    expect(response).to render_template('show')
# 	 # end 

# 	 it 'when user doesnt exist' do
#      get :show
#      expect(response).to have_http_status(:redirect)
#    end
# end 
end
