require 'rails_helper'

RSpec.describe "the signin process", type: :feature, js: true do
     # SETUP
    before :each do
      User.create!(
        name: 'User',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
      )
    end

  scenario "signs the user in" do
    visit '/login'
      fill_in 'email', with: 'test@test.com'
      fill_in 'password', with: 'password'
    click_button 'Submit'
    expect(page).to have_content 'Signed in as User'
  end
end
