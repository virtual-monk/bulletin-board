require 'rails_helper'

feature 'user adds new event', %{
  As a user,
  I want to add a new event
  So that everyone can come to my shindig} do
  scenario 'add new event' do
    user = FactoryGirl.create(:user)
    event = FactoryGirl.create(:event)
    visit root_path

    click_on "Sign Up"

    fill_in 'Email', with: "mycrazynewemail2@gmail.com"
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password

    click_on "Sign up"
    click_on "Add Event"

    fill_in 'Title', with: event.title
    fill_in 'Details', with: event.details
    fill_in 'Address', with: event.address
    fill_in 'City', with: event.city
    fill_in 'State', with: event.state
    fill_in 'Zip code', with: event.zip_code

    click_on 'Add event'

    expect(page).to have_content("Event Saved")
    expect(page).to have_content(event.title)
    expect(page).to have_content(event.details)
    expect(page).to have_content(event.address)
    expect(page).to have_content(event.city)
    expect(page).to have_content(event.state)
    expect(page).to have_content(event.zip_code)
  end
end
