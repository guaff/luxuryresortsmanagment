Given /^I am on the "home" page$/ do
  visit '/'
end


Given /^I am on the "about us" page$/ do
  visit 'home/about'
end

Given /^I am on the "concierge" page$/ do
  visit '/home/concierge'
end

Given /^I am on the "blog" page$/ do
  visit '/blogs'
end

Given /^I am on the "contact" page$/ do
  visit '/home/contact'
end
