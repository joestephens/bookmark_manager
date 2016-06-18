feature 'Adding tags' do
  scenario 'I can add multiple tags to a link' do
    sign_up
    add_link
    expect(Link.first.tags.map(&:name)).to include('education', 'ruby')
  end
end
