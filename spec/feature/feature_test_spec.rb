require "capybara/rspec"

feature "bookmark manager index page" do
  scenario "The index page displays a title" do
    visit "/"
    expect(page).to have_content('Bookmark Manager')
  end
end

feature "bookmark list page" do
  scenario "The page displays bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      
    visit "/bookmarks"
    
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end
end