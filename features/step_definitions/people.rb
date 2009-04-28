Given /I am on the new people page/ do
  visit "/peoples/new"
end

Given /^the following peoples:$/ do |peoples|
  People.create!(peoples.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) people$/ do |pos|
  visit peoples_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following peoples:$/ do |peoples|
  peoples.raw[1..-1].each_with_index do |row, i|
    row.each_with_index do |cell, j|
      response.should have_selector("table > tr:nth-child(#{i+2}) > td:nth-child(#{j+1})") { |td|
        td.inner_text.should == cell
      }
    end
  end
end

Given /^I am on the contact page$/ do
  visit 'home/contact'
end

Given /^I am on the concierge page$/ do
  visit 'home/concierge/'
end
