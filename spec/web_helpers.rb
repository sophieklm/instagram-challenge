require 'rails_helper'

def sign_up(username = "user", email = "example@example.com", password = "password")
  visit "/users/sign_up"
  fill_in 'user_username', with: username
  fill_in 'user_email',  with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation',  with: password
  click_button 'Sign up'
end

def log_in(username = "user", email = "example@example.com", password = "password")
  visit "/users/sign_in"
  fill_in 'user_email',  with: email
  fill_in 'user_password',  with: password
  click_button 'Log in'
end

def upload_photo(description = "Description")
  visit "/photos/new"
  page.attach_file(:photo_image, Rails.root + "spec/fixtures/files/rubber_duck.jpg")
  fill_in :photo_description, with: description
  click_on "Create Photo"
end

def add_comment(comment = "Comment")
  visit "/photos"
  fill_in "comment", with: comment
  click_on "Add Comment"
end
