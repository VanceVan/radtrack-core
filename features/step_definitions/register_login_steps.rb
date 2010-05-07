Given /^a baseline configuration$/ do
  Project.delete_all
  User.delete_all
  project = Factory(:project, :name => 'Project One')
  project.save!
  user = Factory(:user, :email => 'john@test.com')
  project.users << user
  user.save!
  Project.all.size.should == 1
  User.all.size.should == 1
  Project.first.users.size.should == 1
end

Given /^I am logged in as 'john@test\.com'$/ do
  @browser.goto "http://#{DOMAIN_AND_PORT}/"
  @browser.text_field(:id, 'user_session_login').set "john@test.com"
  @browser.text_field(:id, 'user_session_password').set "password"
  @browser.button(:name, 'commit').click
end

Given /^I am using project "(.*)"$/ do |project_name|
  @browser.link(:text, project_name).click
  @project = Project.find_by_name project_name
end

When /^I send an invitation to 'eric@test\.com'$/ do
  pending "Can't figure out how to activate a jquery tab from cuke"
  @browser.goto "http://#{DOMAIN_AND_PORT}/projects/#{@project.id}#members"
end

Then /^an email is sent to 'eric@test\.com'$/ do
end

Then /^an account for 'eric@test\.com' exists$/ do
end

Then /^the account for 'eric@test\.com' is marked as pending$/ do
end

