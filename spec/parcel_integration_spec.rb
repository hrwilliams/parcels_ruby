require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('parcle path' , {:type => :feature}) do
  it('processes the user entry and returns the cost of shipping') do
    visit('/')
    fill_in('length', :with=> 5)
    fill_in('width', :with=> 5)
    fill_in('height', :with=> 5)
    fill_in('speed', :with=> 2)
    fill_in('weight', :with=> 71)
    click_button('submit')
    expect(page).to have_content('65')
  end
end
