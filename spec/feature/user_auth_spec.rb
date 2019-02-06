RSpec.feature 'Visits homepage', type: :feature do
  scenario 'Has sign up form' do
    visit '/'
    expect(page).to have_content('InstaPix')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password')
    expect(page).to have_content('Password confirmation')
  end
end
