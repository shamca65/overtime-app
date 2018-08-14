# spec/features/static_spec.rb

require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end
  end
  it 'has a title of Posts' do
    visit posts_path
    expect(page).to have_content(/Posts/)
  end
  # mimic signing in a user

end
describe 'creation' do
  before do
    user = User.create(email: "test2@test.com", password: "password", first_name: "John", last_name: "Snow")
    login_as(user, :scope => :user)
    visit new_post_path
  end

  it 'has a new form that can be reached' do
    expect(page.status_code).to eq(200)
  end
  it 'can be created from new form page' do
    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: "some rationale"
    click_on "Save"
    expect(page).to have_content("some rationale")
  end

  it 'will have a user associated with' do
    fill_in 'post[date]', with: Date.today
    fill_in 'post[rationale]', with: "user_associated"
    click_on "Save"
    expect(User.last.posts.last.rationale).to eq("user_associated")
  end
end
