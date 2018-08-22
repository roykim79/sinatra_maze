require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the maze path', :type => :feature do
  it 'moves the user from one room to another' do
    visit '/'
    click_link'Enter the maze'
    expect(page).to have_content 'Room'
  end

  it 'show a Congratulations message when the user hits the end' do
    visit '/'
    click_link'Enter the maze'
    click_link 'right'
    click_link 'down'
    click_link 'left'
    click_link 'down'
    click_link 'right'
    click_link 'right'
    expect(page).to have_content 'Congratulations'
  end
end
