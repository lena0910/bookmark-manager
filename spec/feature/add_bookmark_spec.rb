require "capybara/rspec"

feature 'add bookmark' do
  scenario 'user can add a bookmark' do
    visit '/bookmarks/new'
    fill_in('Bookmark', with: 'http://www.twitter.com')
    click_on('Add')
    expect(page).to have_content('http://www.twitter.com')
  end
end