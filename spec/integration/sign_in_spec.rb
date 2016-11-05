require 'spec_helper'

feature "Capybara: Sessions", :js => true do

  scenario 'user can create account, sign out, and sign back in' do
    visit root_path
    click_on('Sign up')
    page.find("#new-user").click
    fill_in 'user_name', with: "Alex"
    fill_in 'user_email', with: "alex@gmail.com"
    fill_in 'user_password', with: "1234"
    click_button "submit"
    expect(page).to have_text('Welcome Freebie Getter, Alex.')

    click_on('Log Out')
    expect(page).to have_text('Welcome to Freebie Tracker!')

    page.find("#sign-in").click
    fill_in 'user_email', with: "alex@gmail.com"
    fill_in 'user_password', with: "1234"
    click_button "submit"
    expect(page).to have_content('Welcome Freebie Getter, Alex.')

  end



end

  # scenario 'user can log in' do
  #   visit root_path
  #   page.find("#sign-in").click
  #   fill_in 'user_email', with: @alex.email
  #   fill_in 'user_password', with: @alex.password
  #   click_button "submit"
  #   #binding.pry
  #   expect(page).to have_content('Welcome Freebie Getter, Alex.')
  # end
