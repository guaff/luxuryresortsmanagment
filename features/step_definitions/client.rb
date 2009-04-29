Given /^I am on the client show page$/ do
  ivan = Factory(:client, :id => '1')
  visit '/clients/1'
end


