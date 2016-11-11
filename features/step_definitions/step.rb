Given(/^I'm on the Signup page$/) do
  visit(new_user_registration_path)
end

When(/^I give a valid email id and password$/) do
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  click_button 'Sign up'
end

Then(/^I should be able to signup$/) do
  assert page.has_content? ("Onestop Learning")
end

Given(/^all the languages have been added$/) do
  Langopt.create(name: "Python")
  Langopt.create(name: "Java")
  Langopt.create(name: "Ruby")
  Langopt.create(name: "C++")
end

And(/^I'm on the display page$/) do
  visit(languages_path)
end

When(/^I click on the drop-down$/) do
  find('#language_Langopt_id').click
end

Then(/^I should be able to see all the languages and select one$/) do
  # puts page.body  
  select "Java", :from => "language_Langopt_id", :visible => false
  # select "Java", from: "Language", visible: false
  # page.select 'Ruby', :from => 'language_Langopt_id'
  
end

Given(/^I'm on the Ruby page$/) do
  visit(languages_ruby_path)
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


When(/^I click on the Back button$/) do
  find('.Back').click
end

Then(/^I should be able to see the Main Page$/) do
  assert page.has_content?("Onestop Learning")
end

Given(/^I'm logged in$/) do
  User.create(email: 'rss@upenn.edu', password: 'qwertyuiop', password: 'qwertyuiop')
  visit(languages_path)
  fill_in 'Email', :with => 'rss@upenn.edu'
  fill_in 'Password', :with => 'qwertyuiop'
  click_button 'Log in'
end

And(/^I'm on the Main Page$/) do
  visit(languages_path)
end

When(/^I click on signout$/) do
  find('a').click
end

Then(/^I should signout$/) do
  assert page.has_content?("Log in")
end



