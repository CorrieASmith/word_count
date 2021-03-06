require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the sentence converted to word occurrences', {:type => :feature}) do
  it('processes the user entry and returns it in word occurrences') do
    visit('/')
    fill_in('my_word', :with => 'pizza')
    fill_in('sentence', :with => 'my favorite food is pizza pizza pizza')
    click_button('Count!')
    expect(page).to have_content(3)
  end
end
