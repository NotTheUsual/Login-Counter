Given(/^I am on the sign up page$/) do
  visit new_user_registration_path
end

Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I am a registered user$/) do
  visit new_user_registration_path
  fill_in 'Email', with: 'ecomba@makersacademy.com'
  fill_in 'Password', with: 'password1'
  fill_in 'Password confirmation', with: 'password1'
  click_button 'Sign up'
end

When(/^I fill out the sign up form$/) do
  within '#new_user' do
    fill_in 'Email', with: 'ecomba@makersacademy.com'
    fill_in 'Password', with: 'password1'
    fill_in 'Password confirmation', with: 'password1'
    click_button 'Sign up'
  end
end

When(/^I fill out the sign in form$/) do
  within '#new_user_session' do
    fill_in 'Email', with: 'ecomba@makersacademy.com'
    fill_in 'Password', with: 'password1'
    click_button 'Sign in'
  end
end

Then(/^I should be signed up$/) do
  user = User.find_by_email('ecomba@makersacademy.com')
  expect(user).not_to be_nil
  expect(page).to have_content("Welcome! You have signed up successfully. Sign in below to get started!")
end

Then(/^I should still be on the homepage$/) do
  expect(current_path).to eq(root_path)
end

Then(/^I should be on the count page$/) do
  expect(current_path).to eq(count_path)
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content("Signed in successfully.")
end