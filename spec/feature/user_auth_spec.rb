RSpec.feature 'Visits homepage', type: :feature do
  scenario 'User signs up' do
    user_signup
    expect(page).to have_content('Sign up successful')
    expect(page.current_path).to eq('/posts')
  end
  
  scenario 'User can sign in' do
    user_signup
    user_signin
    expect(page.current_path).to eq('/posts')
  end

end
