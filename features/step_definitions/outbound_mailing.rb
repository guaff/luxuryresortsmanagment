Given /^the user has a room associated with him$/ do
  unit = Factory(:unit_size, :name => "Penthosue", :id => '2')
  resort = Factory(:resort, :name => "delano", :id => '1')
  room = Factory(:room)
end
