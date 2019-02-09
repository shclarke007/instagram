RSpec.feature 'Visits homepage', type: :feature do
  scenario 'User signs up' do
    visit '/'
    expect(page).to have_content('InstaPix')
    user_signup
    click_button("Create account")
    expect(page).to have_content('Sign up successful')
    expect(page.current_path).to eq('/posts')
  end
  
  scenario 'User can sign in' do
    visit '/'
    user_signup
    click_button("Create account")
    visit '/'
    user_signin
    click_button 'Sign In'
    expect(page.current_path).to eq('/posts')
  end

end
