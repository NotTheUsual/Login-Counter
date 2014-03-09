Given(/^I am on the sign up page$/) do
  visit new_user_registration_path
end

When(/^I fill out the sign up form$/) do
  fill_in 'Email', with: 'ecomba@makersacademy.com'
  fill_in 'Password', with: 'password1'
  fill_in 'Password confirmation', with: 'password1'
  click_button 'Sign up'
end

Then(/^I should be signed up$/) do
  user = User.first
  expect(user).not_to be_nil
end