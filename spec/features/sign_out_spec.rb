require 'spec_helper'

feature 'User sign out' do
  before(:each) do
    User.create(email: 'test@test.com',
                password: 'test',
                password_confirmation: 'test')
  end

  scenario 'can sign out' do
    sign_in(email: 'test@test.com',
            password: 'test',)
    click_button "Sign Out"
    expect(page).to have_content("Goodbye!")
    expect(page).not_to have_content('Welcome, test@test.com')


  end




end
