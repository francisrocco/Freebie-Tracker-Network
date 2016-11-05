require 'spec_helper'

feature "Capybara: Sign in", :js => true do
  before :each do
    alex = User.create(name: "Alex", email: "alex@gmail.com", password: "1234")
  end

  after :each do
    User.destroy_all
  end

  scenario 'user can log in' do
    visit root_path
    page.find("#sign-in").click
    fill_in 'Email', with: 'clay@gmail.com'
    fill_in 'Password', with: '1234'
    click_button 'Submit'
    expect(page).to have_content('Welcome Freebie Getter, Clay.')
  end
end
