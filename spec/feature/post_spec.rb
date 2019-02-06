RSpec.feature 'Creating post', type: :feature do
  scenario 'can create a post' do
    visit '/posts'
    click_link 'New Post'
    attach_file('post_image', "spec/files/images/computer.jpg")
    fill_in 'post_caption', with: '#computertime'
    click_button 'Create Post'
    expect(page).to have_content('#computertime')
    expect(page).to have_css("img[src*='computer.jpg']")
  end
end
