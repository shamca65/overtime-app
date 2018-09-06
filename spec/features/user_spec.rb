require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email: "test2@test.com", password: "password", first_name: "Jon", last_name: "Snow", phone: '5196436458')
  end

  describe "creation" do

    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first name & last name" do
      @user.first_name = nil
      @user.last_name = nil
      @user.phone = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it "has a full name method that combines first and last name" do
      expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end