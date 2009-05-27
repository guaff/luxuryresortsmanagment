Given /^I am on the full view of a resort$/ do
  florida = Factory(:city, :name => "florida", :id => '1')
  unit_size = Factory(:unit_size, :id => '1', :name => "2b/2b")
  resort = Factory(:resort, :name => 'resort1', :id => '1',  :city_id => '1')
  client = Factory(:client, :full_name => 'Ivan Acosta-Rubio', :id => '1')
  rooom = Factory(:room, :id => '1', :resort_id => '1', :unit_size_id => '1', :client_id => '1', :code => '33137')
  visit '/resorts/1/'
end

Given /^I am showing florida with (\d*) resorts?$/ do |count|
  florida = Factory(:city, :name => "florida", :id => '1')
  count.to_i.times do |index|
    Factory(:resort, :name => "resort#{index}")
  end
  visit '/cities/1'
end

Then /^I should see (\d*) resorts$/ do |count|
  count.to_i.times do |index|
    Then "I should see \"resort#{index}\""
  end
end




