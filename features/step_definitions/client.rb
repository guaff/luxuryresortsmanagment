Given /^I am on the client show page$/ do
  ivan = Factory(:client, :id => '1')
  visit '/clients/1'
end


Given /^I am on the optin page$/ do
  visit '/optin'
end

Given /^I am on the optout page$/ do
  visit '/optout'
end
