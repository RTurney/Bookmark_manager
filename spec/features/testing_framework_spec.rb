feature 'test framework' do 
  scenario 'it should test framework is working' do 
    visit('/test')
    expect(page).to have_content "Hello, world"
  end
end 