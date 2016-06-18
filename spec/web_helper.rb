def sign_up(email: 'alice@example.com',
           password: '12345678',
           password_confirmation: '12345678')
 visit '/users/new'
 fill_in :email, with: email
 fill_in :password, with: password
 fill_in :password_confirmation, with: password_confirmation
 click_button 'Sign up'
end

def sign_in(email: 'alice@example.com', password: '12345678')
  visit '/users/sign-in'
  fill_in :email, with: email
  fill_in :password, with: password
  within 'div#sign_in' do
    click_button 'Sign in'
  end
end

def add_link(url: 'http://www.makersacademy.com', title: 'Makers Academy', 
             tags: 'education ruby')
  visit '/links/new'
  fill_in 'url', with: url
  fill_in 'title', with: title
  fill_in 'tags', with: tags
  click_button 'Create link'
end
