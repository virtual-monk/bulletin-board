require 'rails_helper'

feature 'user updates event ', %{
  As a user,
  I want to update my event
  So that everyone can see the new details } do
  scenario 'goes to specific beer' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Sign Up"

    fill_in 'Email', with: "mycrazynewemail@gmail.com"
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password

    click_on "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
