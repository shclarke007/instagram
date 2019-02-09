RSpec.feature 'Visits homepage', type: :feature do
  scenario 'User signs up' do
    visit '/'
    expect(page).to have_content('InstaPix')
    fill_in :user_email, with: 'socks@yahoo.com'
    fill_in :user_password, with: 'testing123'
    fill_in :user_password_confirmation, with: 'testing123'
    click_button("Create account")
    expect(page).to have_content('Sign up successful')
    expect(page.current_path).to eq('/posts')
  end
  
  scenario 'User can sign in' do
    visit '/'
    fill_in :user_email, with: 's@email.com'
    fill_in :user_password, with: 'Bananas'
    fill_in :user_password_confirmation, with: 'Bananas'
    click_button("Create account")
    visit '/'
    fill_in :sign_in_email, with: 's@email.com'
    fill_in :sign_in_password, with: 'Bananas'
    click_button 'Sign In'
    expect(page.current_path).to eq('/posts')
  end
end
