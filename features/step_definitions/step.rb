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
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
 

end

Then(/^I should be able to signIn$/) do
  assert page.has_content?("Welcome!")
  click_button('Signout')
end


#---------------- Scenario: Register using email ----------------

Given(/^I'm on the Signup page$/) do
  visit(root_path)
  click_link('Sign up')
end

When(/^I give a valid email id and password$/) do
  # save_and_open_page
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Confirm Password', :with => '12345678'
  click_button 'Sign up'
end

Then(/^I should be able to signup$/) do
  assert page.has_content? ("Welcome!")
  click_button('Signout')
end


# ----------------Scenario: Signout ----------------

Given(/^I'm logged in$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
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
  # Langopt.create(name: "Python")
  # Langopt.create(name: "Java")
  # Langopt.create(name: "Ruby")
  # Langopt.create(name: "C++")
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
end

And(/^I'm on the display page$/) do
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
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
  # Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
end


When(/^I click on the Main Menu link$/) do
  click_link('Main Menu')
end

Then(/^I should be able to see the Main Page$/) do
  assert page.has_content?("Welcome!")
end



# ----------------Scenario: Select video/doc link----------------

Given(/^I'm on the Ruby page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  # Langopt.create(name: "Ruby")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
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
  # Langopt.create(name: "Python")
  visit(root_path)
  # fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

When(/^I See the Page$/) do
  end

Then(/^I should not be able to see the Favorite or Unfavorite button$/) do
  assert page.has_button?('Favorite') == false
  assert page.has_button?('Unfavorite') == false
end


# ----------------View Language Page Favorite/Unfavorite button----------------

When(/^I go the page of any Language$/) do
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
  end

Then(/^I should be able to see the Favorite or Unfavorite button$/) do
  assert page.has_button?('Favorite') 
  assert page.has_button?('Unfavorite') 
end

# ----------------Click Language Page Favorite/Unfavorite button----------------

Given(/^I'm on the language page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  # Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
end

When(/^I click on the Favorite button$/) do
  assert UserFavorite.count.zero?
  # first('.button_to').click_button('Favorite')
  # page.all('.button_to')[1].click
  # find('.button_to').click
  click_button('Favorite', match: :first)
  end

Then(/^the link should be stored in the Favorite Table$/) do
  # save_and_open_page
  refute UserFavorite.count.zero? 
end

When(/^I click on the Unfavorite button$/) do
  click_button('Unfavorite', match: :first)
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
  # save_and_open_page
  # assert page.has_content?("Favorited videos: #{@count}")
end

Then(/^the link count should decrement$/) do
  @count = UserFavorite.count
  assert page.has_content?("Favorited videos: #{@count}")
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
  # assert UserFavorite.count.zero?
  # page.evaluate_script("window.location.reload()")
  # driver.navigate().refresh()
  # page.driver.browser.navigate.refresh
  # page.reload()
  # save_and_open_page
  refute page.has_content?("#{@language} : #{@owner}")
end


# ---------------- New Comments Section ----------------------------

Given(/^I'm on the New Comments Page$/) do
  visit(comments_new_path)
end

When(/^I add a new comment$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  fill_in 'Title', :with => 'Ruby on Rails'
  fill_in 'Body', :with => 'It is a great framework!'
  click_button 'Create Comment'
end

Then(/^The new comment should be added$/) do
  assert page.has_content? ("Ruby on Rails")
  assert page.has_content? ("It is a great framework!")
end

When(/^I try to add a new comment$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

Then(/^The Author field should be auto-populated with my email id$/) do
  # expect(page).to have_selector("comment_author[value='rss@upenn.edu']")
  assert page.has_field?('Author', with: 'rss@upenn.edu')
end

# ------------------------ Reply to comments section ----------------------------

Given(/^I'm on the Comments Page$/) do
  visit(comments_path)
end

When(/^I reply to a new comment$/) do
  Comment.create(title: "Java Threads", author: "user1@upenn.edu", body: "This is very helpful")
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  click_link('reply')
  fill_in 'Title', :with => 'My reply'
  fill_in 'Body', :with => 'Even I think so'
  click_button 'Create Comment'

end

Then(/^The new reply should be added to that comment$/) do
  assert page.has_content? ("My reply")
  assert page.has_content? ("Even I think so")
end

Given(/^I've logged in$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  Comment.create(title: "Java Threads", author: "user1@upenn.edu", body: "This is very helpful")
  # Comment.create(title: "Python scripts", author: "user2@upenn.edu", body: "It is very powerful")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
end

When(/^I'm on the Comments page$/) do
  visit(comments_path)
end


Then(/^I should be able to see all the comments added by previous users$/) do
  assert page.has_content?('Java Threads')
  assert page.has_content?('user1@upenn.edu')
  assert page.has_content?('This is very helpful')
  # assert page.has_content?('Python scripts')
  # assert page.has_content?('user2@upenn.edu')
  
end


# ------------------------ Give feedback comment ----------------------------
Given(/^I'm on the Feedback page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  visit(about_path)
end

When(/^I enter the feedback info$/) do
  assert Feedback.count.zero?
  fill_in 'comment', :with => 'Hello'
  click_button('Submit')
end

Then(/^I should be able to see the success message$/) do
  refute Feedback.count.zero?
  assert page.has_content?("Thanks for your valuable feedback!!!")
end



# ------------------------ Favorite Videos Page ----------------------------
# Given I'm on the Home page

When(/^I click on the Favorites Link\/Button$/) do
  click_link('Favorites')
end

Then(/^I should be able to see the Favorite Videos Page$/) do
  assert page.has_content?("My Favorite Videos")
end


# ------------------------ Favorite Videos Links ----------------------------
Given(/^I click a favorite button for a video$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  # Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
  # save_and_open_page
  click_button('Favorite', match: :first)
end

When(/^I go the Favorite Videos Page$/) do
  click_link('Favorites')
end

Then(/^I should be able to see that video$/) do
  # save_and_open_page
  assert page.has_content?("My Favorite Videos")
  refute UserFavorite.count.zero?
  assert page.has_content?("Python : By Derek Banas")
end


# ------------------------ Add Blank URL ----------------------------
Given(/^I'm on the Favorites page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  # Langopt.create(name: "Python")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  click_link('Favorites')
end

When(/^I click on the Add button$/) do
  click_button('Add')
end

Then(/^I should be able to see the error notice\.$/) do
  assert page.has_content?("Please enter a valid link.")
end

# ------------------------ Add personal Favorite Videos Links ----------------------------

When(/^I the enter the URL information$/) do
  assert UserFavorite.count.zero?
  fill_in 'url', :with => 'https://www.youtube.com/watch?v=0yW7w8F2TVA'
  fill_in 'lang', :with => 'Test'
  click_button('Add')
end

Then(/^I should be able to see that video in the list\.$/) do
  refute UserFavorite.count.zero?
  assert page.has_content?("Test : By rss@upenn.edu")
end


# ------------------------ Open quiz page. ----------------------------
When(/^I click on the quiz button$/) do
  click_link('Quiz')
end

Then(/^I should be able to see the quiz page.$/) do
  assert page.has_content?("Quiz on Python")
end

# ------------------------ Enter the answer number ----------------------------
Given(/^I'm on the Quiz Page$/) do
  User.create(email: "rss@upenn.edu", encrypted_password: "$2a$10$73H9vhOZVcojMINs7NeOW.wSrj48S0kukb./dIbxZnuNQj5U8O9ge")
  visit(root_path)
  fill_in 'user[email]', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button('Log in')
  select "Python", :from => "language_Langopt_id", :visible => false
  click_button('Search')
  click_link('Quiz')
end

When(/^I click on the check$/) do
  click_button('Check', match: :first)
end

Then(/^I should be able to see if the answer is correct or wrong$/) do
  assert page.has_content?("Wrong Answer")
end
