require "rails_helper"

 RSpec.describe TodoTask, :type => :model do
 	context "valid Model" do
 	  let(:todotask) { build(:todo_task) }

 	  it "is valid model with content, and todo_lis_id  " do  
      expect(todotask).to be_valid
    end

    it "is not valid without a content" do
      list = build(:todo_task_without_content)
      expect(list).to_not be_valid
    end

    it "is not valid without a todo_list_id" do
      list = build(:todo_task_without_todo_list_id)
      expect(list).to_not be_valid
    end

    it "is not valid without a created_a" do
      list = build(:todo_task_without_created_at)
      expect(list).to be_valid
    end

    it "is not valid without a created_a" do
      list = build(:todo_task_without_updated_at)
      expect(list).to be_valid
    end

	end
end