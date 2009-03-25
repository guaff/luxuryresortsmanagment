Given /^I am on the admin client page$/ do
  ivan = Factory(:client)
  visit '/admin/clients'
end

Given /^I am on the admin room page$/ do
  ivan = Factory(:room, :code => '33137')
  visit = '/admin/rooms'
end
