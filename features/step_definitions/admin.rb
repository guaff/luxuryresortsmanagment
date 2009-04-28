Given /^I am on the admin client page$/ do
  ivan = Factory(:client)
  visit '/admin/clients'
end

Given /^I am on the admin room page$/ do
  visit '/admin/rooms'
end
