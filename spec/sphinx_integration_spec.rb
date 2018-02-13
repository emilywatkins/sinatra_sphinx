require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle path', {:type => :feature}) do
  it('processes the user entry and returns whether the answers are correct') do
    visit('/')
    fill_in('riddle1', :with => 'snail')
    fill_in('riddle2', :with => 'short')
    click_button('Go!')
    expect(page).to have_content('YOU\'RE A LOSER (but you got it right)')
  end
end
