require "rails_helper"

RSpec.describe User, :type => :model do
  context "valid Model" do
    let(:user) { build(:user) }
    it "is valid id, email, password, encrypted_password,created_at, updated_at, username " do   
      expect(user).to be_valid
    end

    it "is not valid without a email" do 
      users = build(:user_without_email)  
      expect(users).to_not be_valid
    end

    it "is not valid without a password" do 
      users = build(:user_without_password)  
      expect(users).to_not be_valid
    end

    it "is not valid without a encrypted_password" do 
      users = build(:user_without_encrypted_password)  
      expect(users).to be_valid
    end

    it "is not valid without a created_at" do 
      users = build(:user_without_created_at)  
      expect(users).to be_valid
    end

    it "is not valid without a updated_at" do 
      users = build(:user_without_updated_at)  
      expect(users).to be_valid
    end

     it "is not valid without a username" do 
      users = build(:user_without_username)  
      expect(users).to be_valid
    end

  end
end