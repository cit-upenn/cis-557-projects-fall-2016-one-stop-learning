Given(/^I'm on the display page$/) do
  visit(languages_path)
end

When(/^I click on the drop-down$/) do
  # click_button '#langopt_Langopt_id'
  find('#language_Langopt_id').click
end

Then(/^I should be able to see all the languages and select one$/) do
  # page.find("select").click
  # Capybara.ignore_hidden_elements = false
#puts page.body
  # Capybara.ignore_hidden_elements = true
  # # puts page.body
  
  # select "Java", :from => "#langopt_Langopt_id", :visible => false
  # select "Java", from: "Langopt", visible: false
    
  # page.select 'Ruby', :from => '#language_Langopt_id'
  # find('#language_Langopt_id').click
  # assert page.has_select?('Language', :options=> ['Java','Python','Ruby','C++'])
  
  # puts find_field('language_Langopt_id').text
  # page.select 'Java', :from=>'Language', :visible=> false

  # expect(page).to have_select(Language, :options=> ['Java'])
  # select "Java", :from => "Langopt"
  # find('#language_Langopt_id option[value='1']').click
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
  assert page.has_content?("Onestop")
end


