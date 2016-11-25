# Before do
#   rake db:seed
# end
# This step is added in features/support/env.rb as ->
# require_relative '../../db/seeds'
# ----------------Scenario: Sign In using email------------------------
Given(/^I'm on the SignIn page$/) do
  visit(root_path)
end

When(/^I give valid credentials$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
 

end

Then(/^I should be able to signIn$/) do
  assert page.has_content?("Onestop Learning")
  click_button('Signout')
end


#---------------- Scenario: Register using email ----------------

Given(/^I'm on the Signup page$/) do
  visit(root_path)
  click_link('Sign up')
end

When(/^I give a valid email id and password$/) do
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  click_button 'Sign up'
end

Then(/^I should be able to signup$/) do
  assert page.has_content? ("Onestop Learning")
  click_button('Signout')
end


# ----------------Scenario: Signout ----------------

Given(/^I'm logged in$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

And(/^I'm on the Main Page$/) do
  visit(languages_path)
end

When(/^I click on signout$/) do
  # find('a').click
  click_button 'Signout'
end

Then(/^I should signout$/) do
  assert page.has_content?("Log in")
end

# ----------------Scenario: Select language ----------------

Given(/^all the languages have been added$/) do
  Langopt.create(name: "Python")
  Langopt.create(name: "Java")
  Langopt.create(name: "Ruby")
  Langopt.create(name: "C++")
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
end

And(/^I'm on the display page$/) do
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

When(/^I click on the drop-down$/) do
  find('#language_Langopt_id').click
end

Then(/^I should be able to see all the languages and select one$/) do
  # puts page.body  
  select "Java", :from => "language_Langopt_id", :visible => false
  select "Python", :from => "language_Langopt_id", :visible => false
  select "Ruby", :from => "language_Langopt_id", :visible => false
  select "C++", :from => "language_Langopt_id", :visible => false
end


# ----------------Scenario: Click on Back Button ----------------


Given(/^I'm on the Language page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
end


When(/^I click on the Back button$/) do
  click_link('Back')
end

Then(/^I should be able to see the Main Page$/) do
  assert page.has_content?("Onestop Learning")
end



# ----------------Scenario: Select video/doc link----------------

Given(/^I'm on the Ruby page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  Langopt.create(name: "Ruby")
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Ruby", :from => "language_Langopt_id", :visible => false
  click_button('Search')
end

When(/^I click on a video link$/) do
  find('#link1').click
end

Then(/^I should be able to see the video tutorial$/) do
  assert page.has_content?("Ruby Programming - YouTube")
end


When(/^I click on the documentation link$/) do
  find('#doc').click
end

Then(/^I should be able to see the documentation$/) do
  assert page.has_content?("Ruby-Doc.org: Documenting the Ruby Language")
end

# ----------------Home Page Favorite/Unfavorite button----------------
Given(/^I'm on the Home page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

When(/^I See the Page$/) do
  end

Then(/^I should not be able to see the Favorite or Unfavorite button$/) do
  assert page.has_button?('favorite') == false
  assert page.has_button?('unfavorite') == false
end


# ----------------View Language Page Favorite/Unfavorite button----------------

When(/^I go the page of any Language$/) do
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
  end

Then(/^I should be able to see the Favorite or Unfavorite button$/) do
  assert page.has_button?('favorite') 
  assert page.has_button?('unfavorite') 
end

# ----------------Click Language Page Favorite/Unfavorite button----------------

Given(/^I'm on the language page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
end

When(/^I click on the Favorite button$/) do
  assert UserFavorite.count.zero?
  first('.button_to').click_button('favorite')
  end

Then(/^the link should be stored in the Favorite Table$/) do
  assert UserFavorite.count.zero? == false
end

When(/^I click on the Unfavorite button$/) do
  page.all('.button_to')[1].click
  end

Then(/^the link should be removed from the Favorite Table$/) do
  assert UserFavorite.count.zero?
end


# ----------------Login Page should not have Favorite Links----------------
# Given(/^I'm on the SignIn page$/) do
# Defined in line 7

# When(/^I See the Page$/) do
# Defined in line 164

Then(/^I should not be able to see the Favorite links$/) do
  assert page.has_content?("Favorites") == false
end



# ----------------Home Page should have Favorite links----------------
# Given I'm on the Home page - Line 155
# When I See the Page - Line 164

Then(/^I should be able to see the Favorite links$/) do
  assert page.has_content?("Favorites")
end

# ----------------Language Page should have Favorite links----------------
# All steps defined.


# ----------------Count Favorite Links----------------
# Given I'm on the Language page
# When I click on the Favorite button
Then(/^the link count should increment$/) do
  @count = UserFavorite.count
  assert page.has_content?("Favorites : #{@count}")
end

Then(/^the link count should decrement$/) do
  @count = UserFavorite.count
  assert page.has_content?("Favorites : #{@count}")
end


# ----------------Add and Remove Favorite Links----------------
# Given I'm on the Language page
# When I click on the Favorite button

Then(/^the link should be shown in the Favorite Links$/) do
  @language = UserFavorite.first.language
  @owner = UserFavorite.first.owner
  assert page.has_content?("#{@language} : #{@owner}")
end

Then(/^the link should be removed from the Favorite Links$/) do
  assert UserFavorite.count.zero?
  # page.evaluate_script("window.location.reload()")
  # driver.navigate().refresh()
  # page.driver.browser.navigate.refresh
  # page.reload()
  # save_and_open_page
  assert page.has_content?("#{@language} : #{@owner}") == false
end