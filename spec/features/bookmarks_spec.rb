feature 'Bookmarks' do
  scenario 'the page returns an OK status code' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'the page returns a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("https://github.com/makersacademy/course/blob/master/bookmark_manager/walkthroughs/03.md")
  end
end