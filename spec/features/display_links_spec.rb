feature 'Homepage' do
  scenario 'Displays links' do
    visit '/'
    expect(page).to have_link("Github")
  end
end
