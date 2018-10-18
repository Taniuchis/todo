require "rails_helper"

RSpec.describe TodoList, :type => :model do
  context "valid Model" do
  		user = create :user
  	list = TodoList.new(
      id: '12',
      title: 'lista',
      description: 'Sumner',
      created_at: '2018-10-15 14:56:34.623712',
      updated_at: '2018-10-15 14:56:34.623712',
      user_id: 1)
    it "is valid id, title,description, created_at, updated_at, user_id  " do  
      expect(list).to be_valid
    end
  end
end