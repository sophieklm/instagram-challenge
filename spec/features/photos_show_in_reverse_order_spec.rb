require 'rails_helper'
require './app/models/photo'
require 'orderly'

feature 'photos show most recent first' do
  scenario 'when photos are submitted' do
    sign_up
    upload_photo(description = "first photo")
    upload_photo(description = "second photo")
    visit ('/')
    expect(page).to have_content("second photo")
    expect("second photo").to appear_before("first photo")
  end
end
