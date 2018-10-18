require "rails_helper"

RSpec.describe User, :type => :model do
  context "valid Model" do
    let(:user) { build(:user) }
    it "is valid id, email, password, encrypted_password,created_at, updated_at, username " do   
      expect(user).to be_valid
    end
  end
end