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
    fill_in :user_email, with:('socks@yahoo.com')
    fill_in :user_password, with:('testing123')
    fill_in :user_password_confirmation, with:('testing123')
    click_button("Create account")
    expect(page).to have_content('Sign up successful')
    expect(page.current_path).to eq('/posts')
  end
end
