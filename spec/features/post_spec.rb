# spec/features/static_spec.rb

require 'rails_helper'

describe 'navigate' do

  before do
    @user = User.create(email: "test2@test.com", password: "password", first_name: "John", last_name: "Snow")
    login_as(@user, :scope => :user)
  end

  describe 'index' do
    before do
      visit posts_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  it 'has a title of Posts' do
    visit posts_path
    expect(page).to have_content(/Posts/)
  end

  #
  it 'has a list of posts' do

    post1 = @post = Post.create(date:Date.today, rationale: "Post1", user_id: @user.id)
    post2 = @post = Post.create(date:Date.today, rationale: "Post2", user_id: @user.id)

    visit posts_path
    expect(page).to have_content(/Post1|Post2/)
  end
end

describe 'creation' do

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

<<<<<<< HEAD
  it 'will have a user associated with it' do
    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: 'User Association'
    click_on "Save"

    expect(User.last.post.last.rationale).to eq("User Association")
  end
=======
  #it 'will have a user associated with it' do
  #  fill_in 'post[date]', with: Date.today
  #  fill_in 'post[rationale]', with: "User Association"
  #  click_on "Save"

   # expect(User.last.Posts.last.rationale).to eq("User Association")
  #end
>>>>>>> 3412278934c96bb744a24fdfc0be0426e685c786

end
