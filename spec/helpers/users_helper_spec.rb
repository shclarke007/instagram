require 'rails_helper'
def user_signup
  visit '/'
  fill_in :user_email, with: 'socks@yahoo.com'
  fill_in :user_password, with: 'testing123'
  fill_in :user_password_confirmation, with: 'testing123'
  click_button("Create account")
end

def user_signin
  visit '/'
  fill_in :sign_in_email, with: 'socks@yahoo.com'
  fill_in :sign_in_password, with: 'testing123'
  click_button 'Sign In'
end

def incorrect_signin
  visit '/'
  fill_in :sign_in_email, with: 'socks@yahoo.com'
  fill_in :sign_in_password, with: 'testing'
  click_button 'Sign In'
end
