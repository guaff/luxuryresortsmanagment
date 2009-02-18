require 'factory_girl'

  Factory.define :client do |u|
    u.full_name  "ivan"
    u.full_name_second  "bellatrix"
    u.address  "our address 33132"
    u.city  "miami"
    u.state  "FL"
    u.zip  "33132"
    u.home_phone  "3053349348"
    u.work_phone  "30493094820"
    u.email  "ivan@bakedweb.net"
    u.fee_paid  "35000"
    u.payment_type  "cash"
    u.charge_date  "1-1-2002"
    u.credit_card  '1234567890'
    u.credit_card_type  'visa'
    u.credit_card_expiration  '12/02'
    u.billing_name  "ivan"
    u.billing_address  "my address"
    u.billing_city  'cuba'
    u.billing_state  'HA'
    u.billing_zip  '33132'
    u.start_date  '1-1-2008'
    u.contract_return_date  '2-2-2007'
    u.cancellation_date  '2-2-3004'
    u.charge_return_date  '2-2-2004'
    u.tts_sale_person  'pedro'
    u.resort_sale_person  'pedro'
    u.notes  'he is doing detox'
    u.client_pin  '2323'
  end