RSpec.feature 'Visits homepage', type: :feature do
  scenario 'User signs up successfully' do
    user_signup
    expect(page).to have_content('Sign up successful')
    expect(page.current_path).to eq('/posts')
  end
  
  scenario 'User can sign in successfully' do
    user_signup
    user_signin
    expect(page.current_path).to eq('/posts')
  end

  scenario 'User cannot sign in with incorrect password' do
    user_signup
    incorrect_signin
    expect(page.current_path).to eq('/')
    expect(page).to have_content('Email or password is incorrect')
  end

end
