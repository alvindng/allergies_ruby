require('capybara/rspec')
require("./app")
require('launchy')
Capybara.app = Sinatra::Application
# set(:show_exceptions, false)

describe('the user input path', {:type => :feature}) do
  it "processes the score submitted by users and processes it and returns allergens" do
    visit('/')
    fill_in('score', :with => '128')
    click_button('Allergens?')
    expect(page).to have_content('cats')
  end
end
