require 'spec_helper'

feature 'Capybara: test homepage', :js => true do
describe 'home page' do
  it 'welcomes the user' do
    visit '/'
    page.should have_content('Welcome to Freebie Tracker!')
  end
end
end
