Given /^I am on the show client page$/ do
  @client = Client.create!(
    :full_name => "ivan",
    :full_name_second => "bellatrix",
    :address => "our address 33132",
    :city => "miami",
    :state => "FL",
    :zip => "33132",
    :home_phone => "3053349348",
    :work_phone => "30493094820",
    :email => "ivan@bakedweb.net",
    :fee_paid => "35000",
    :payment_type => "cash",
    :charge_date => "1-1-2002",
    :credit_card => '1234567890',
    :credit_card_type => 'visa',
    :credit_card_expiration => '12/02',
    :billing_name => "ivan",
    :billing_address => "my address",
    :billing_city => 'cuba',
    :billing_state => 'HA',
    :billing_zip => '33132',
    :start_date => '1-1-2008',
    :contract_return_date => '2-2-2007',
    :cancellation_date => '2-2-3004',
    :charge_return_date => '2-2-2004',
    :tts_sale_person => 'pedro',
    :resort_sale_person => 'pedro',
    :notes => 'he is doing detox',
    :client_pin => '2323')
    
    visit("/clients/#{@client.id}")
end

Given /^I click "Print"$/ do
  click_link 'print'
end
