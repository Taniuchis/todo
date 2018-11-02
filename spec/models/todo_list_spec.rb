require "rails_helper"

RSpec.describe TodoList, :type => :model do
  context "valid Model" do
    let(:user) { build(:user) }
    let(:todolist) { build(:todo_list) }

    it "is valid id, title,description, created_at, updated_at, user_id  " do  
      expect(todolist).to be_valid
    end

    it "is not valid without a title" do
      list = build(:todo_list_without_title)
      expect(list).to_not be_valid
    end

    it "is not valid without a description" do
      list = build(:todo_list_without_description)
      expect(list).to_not be_valid
    end

    it "is not valid without a user_id" do
      list = build(:todo_list_without_user_id)
      expect(list).to_not be_valid
    end

    it "is not valid without a created_at" do
      list = build(:todo_list_without_created_at)
      expect(list).to be_valid
    end

    it "is not valid without a updated_at" do
      list = build(:todo_list_without_updated_at)
      expect(list).to be_valid
    end

  end
end