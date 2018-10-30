require 'rails_helper'

describe TodoListsController do

 let(:todolist) { build(:todo_list) }
 let(:user) { build(:user) }
#render_views
	context "valid Controller" do
		 it 'ok' do
		 	#user = create(:user)
		 #      get :index
		 #      expect(response).to have_http_status(:ok)
		 #      expect(response).to render_template('index')
		  #get :index
      #expect(response).to render_template("index")

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