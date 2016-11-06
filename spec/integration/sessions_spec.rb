require 'spec_helper'

feature "Capybara: Sessions", :js => true do

  scenario 'user can create account' do
    visit root_path
    click_on('Sign up')
    page.find("#new-user").click
    fill_in "user_name", with: "Alex"
    fill_in "user_email", with: "alx@gmail.com"
    fill_in "user_password", with: "1234"
    click_button "submit"
    expect(page).to have_text('Welcome Freebie Getter, Alex.')
    click_on('Log Out')
  end

  scenario 'user can sign in and out' do
    visit root_path
    page.find("#sign-in").click
    fill_in "user_email", with: "clay@gmail.com"
    fill_in "user_password", with: "1234"
    click_button "submit"
    expect(page).to have_text('Welcome Freebie Getter, Clay.')

    click_on('Log Out')
    expect(page).to have_text('Welcome to Freebie Tracker!')
  end
end
