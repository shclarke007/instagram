require 'rails_helper'
def user_signup
  fill_in :user_email, with: 'socks@yahoo.com'
  fill_in :user_password, with: 'testing123'
  fill_in :user_password_confirmation, with: 'testing123'
end

def user_signin
  fill_in :sign_in_email, with: 'socks@yahoo.com'
  fill_in :sign_in_password, with: 'testing123'
end

def incorrect_signin
  fill_in :sign_in_email, with: 'socks@yahoo.com'
  fill_in :sign_in_password, with: 'testing'
end
