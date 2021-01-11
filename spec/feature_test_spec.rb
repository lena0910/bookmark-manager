require "capybara/rspec"

feature "bookmark manager index page" do
  scenario "The index page displays a title" do
    visit "/"
    expect(page).to have_content('Bookmark Manager')
  end
end