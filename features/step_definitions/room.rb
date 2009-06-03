Given /^there is a room with code "([^\"]*)"$/ do |arg1|
  Factory(:unit_size, :id => '1')
  Factory(:room, :code => arg1, :unit_size_id => '1')
end

Then /^I fill out the room information$/ do
  fill_in("room_code", :with  => '33137')
end
