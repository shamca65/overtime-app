
require 'rails_helper'

describe 'navigate' do

  before do
    @user = FactoryBot.create(:user)
    login_as(@user, :scope => :user)
  end

  describe 'The index page ' do
    before do
      visit posts_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      post1 = FactoryBot.build_stubbed(:post)
      post2 = FactoryBot.build_stubbed(:second_post)

      visit posts_path
      expect(page).to have_content(/Rationale|content/)
    end
  end
end

describe 'creating a post ' do

  before do
    visit new_post_path
  end

  it 'has a new form that can be reached' do
    expect(page.status_code).to eq(200)
  end

  it 'can be created from new form page' do
    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: "Some rationale"
    click_on "Save"
    expect(page).to have_content("Some rationale")
  end

  it 'will have a user associated with it' do
    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: "Some rationale"
    click_on "Save"
    #expect(User.last.posts.last.rationale).to eq("Some rationale")
  end
end

describe 'editing a post' do

  before do
    @post = FactoryBot.create(:post)
  end

  it 'can be accessed by clicking the edit button on the index page' do
    visit posts_path
    click_link("edit_#{@post.id}") # id of link
    expect(page.status_code).to eq(200)
  end

  it 'is possible' do
    visit edit_post_path(@post)

    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: "Updated rationale"
    click_on "Save"

    expect(page).to have_content("Updated rationale")
  end

end




