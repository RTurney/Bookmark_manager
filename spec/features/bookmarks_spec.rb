require 'pg'

feature 'Bookmarks' do
  scenario 'the page returns an OK status code' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'the page returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end

  scenario 'user adds a bookmark to their list' do
    visit('/bookmarks')
    fill_in :url, with: 'http://www.msn.com'
    click_button 'Submit'
    expect(page).to have_content('http://www.msn.com added to list')
  end
end
