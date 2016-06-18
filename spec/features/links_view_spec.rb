require 'spec_helper'

feature "it has a list of links on the homepage" do
	before(:each) do
		sign_up
		add_link
    add_link(url: 'http://www.google.com', title: 'Google', tags: 'search')
    add_link(url: 'http://www.zombo.com', title: 'This is Zombocom', tags: 'bubbles')
    add_link(url: 'http://www.bubble-bobble.com', title: 'Bubble Bobble', tags: 'bubbles')
  end

	scenario "shows a link on the homepage" do
		visit "/links"
	  expect(page).to have_content('Google')
	end

  scenario 'I can filter links by tag' do
    visit '/tags/bubbles'

    expect(page).not_to have_content('Makers Academy')
    expect(page).not_to have_content('Code.org')
    expect(page).to have_content('This is Zombocom')
    expect(page).to have_content('Bubble Bobble')
  end
end
