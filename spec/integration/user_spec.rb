require 'spec_helper'

feature "Capybara: user interface", :js => true do
  before :each do
    visit root_path
    page.find("#sign-in").click
    fill_in "user_email", with: "clay@gmail.com"
    fill_in "user_password", with: "1234"
    click_button "submit"
  end


  scenario 'user can view items index page and add item' do
    visit items_path
    expect(page).to have_text('All the Freebies!')

    click_button "Add Chanel logo keychain to my collection"
    expect(page).to have_text('Chanel logo keychain')
  end

  scenario 'user can delete item' do
    click_button "Delete Chanel"
    expect(page).to_not have_text('Chanel logo keychain')
  end

end
