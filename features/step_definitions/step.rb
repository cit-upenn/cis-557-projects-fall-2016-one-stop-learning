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



