require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
      @post = Post.create(date:Date.today, rationale: "Anything")
    end
    it "can be created" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
