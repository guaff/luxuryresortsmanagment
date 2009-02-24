Given /^I am on the admin client page$/ do
  ivan = Factory(:client)
  visit '/admin/clients'
end
