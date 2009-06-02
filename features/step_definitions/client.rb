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

When /^I fill out all client info, but billing address$/ do
  fill_in("client_full_name", :with => 'generic')
  fill_in("client_full_name_second", :with => '900 biscayne')
  fill_in("client_address", :with => 'generic')
  fill_in("client_city", :with => 'generic')
  fill_in("client_state", :with => 'generic')
  fill_in("client_zip", :with => '33132')
  fill_in("client_home_phone", :with => '5555555555')
  fill_in("client_work_phone", :with => '5555555555')
  fill_in("client_email", :with => 'generic')
  fill_in("client_fee_paid", :with => '600')
  fill_in("client_payment_type", :with => 'cash')
  fill_in("client_credit_card_type", :with => 'visa')
  
  #fill_in("client_billing_name", :with  => 'ivan')
  #fill_in("client_billing_address", :with => '900')
  #fill_in("client_billing_city", :with => 'miami')
  #fill_in("client_billing_state", :with => 'fl')
  #fill_in("client_billing_zip", :with => "33132")
  fill_in("client_tts_sale_person", :with  => 'ivan')
  fill_in("client_resort_sale_person", :with => 'ivan')
  fill_in("client_notes", :with => 'hello')
  fill_in("client_client_pin", :with => '33132')
  
  fill_in("client_credit_card", :with => 'la negra')
  fill_in("client_credit_card_expiration", :with => '10/12')
  
end

=begin  
      :charge_date, 
      :credit_card_expiration, 
      :start_date, 
      :contract_return_date,
      :cancellation_date
      :charge_return_date,
=end 

