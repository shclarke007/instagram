RSpec.feature 'Visits homepage', type: :feature do
  scenario 'Has sign up form' do
    visit '/'
    expect(page).to have_content('InstaPix')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Password confirmation')
  end
  
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

  scenario 'Has sign in form' do
    visit '/'
    expect(page).to have_content('InstaPix')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
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
    expect(page.current_path).to eq('/sessions')
  end
end
