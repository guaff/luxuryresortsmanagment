Factory.define :city do |u|
  u.id
  u.location_id '1'
  u.image_file_name 'imagen'
  u.image_content_type 'image/jpeg'
  u.image_file_size '99999'
  u.description 'This is the shit'
end

Factory.define :resort do |u|
  u.city_id '1'
  u.description 'wicked resort'
  u.photo_main_file_name 'main'
  u.photo_main_content_type 'image/jpeg'
  u.photo_main_file_size '99999'
  u.photo_main_updated_at
  u.photo1_file_name 'main2'
  u.photo1_content_type 'image/jpeg'
  u.photo1_file_size '99999'
  u.photo1_updated_at
  u.photo2_file_name 'main3'
  u.photo2_content_type 'image/jpeg'
  u.photo2_file_size '99999'
  u.photo2_updated_at
  u.photo3_file_name 'main4'
  u.photo3_content_type 'image/jpeg'
  u.photo3_file_size '99999'
  u.photo3_updated_at 
   u.photo4_file_name 'main6'
  u.photo4_content_type 'image/jpeg'
  u.photo4_file_size
  u.photo4_updated_at
end

Factory.define :user do |u|
  u.id
  u.login 'ivan'
  u.password '01210323'
  u.email 'ivan@bakedweb.net'
  u.password_confirmation '01210323'
end

Factory.define :client do |u|
    u.full_name  "ivan"
    u.full_name_second  "bellatrix"
    u.address  "our address 33132"
    u.city  "miami"
    u.state "FL"
    u.zip "33132"
    u.home_phone "3053349348"
    u.work_phone "30493094820"
    u.email "ivan@bakedweb.net"
    u.fee_paid "35000"
    u.payment_type "cash"
    u.charge_date "1-1-2002"
    u.credit_card '1234567890'
    u.credit_card_type 'visa'
    u.credit_card_expiration '12/02'
    u.billing_name "ivan"
    u.billing_address "my address"
    u.billing_city 'cuba'
    u.billing_state 'HA'
    u.billing_zip '33132'
    u.start_date '1-1-2008'
    u.contract_return_date '2-2-2007'
    u.cancellation_date '2-2-3004'
    u.charge_return_date '2-2-2004'
    u.tts_sale_person 'pedro'
    u.resort_sale_person 'pedro'
    u.notes 'he is doing detox'
    u.client_pin '2323'
end

Factory.define :room do |u|
  u.code '33137'
  u.availability 'all year'
  u.sale_or_rent  'rent'
  u.price '500000'
  u.owner_name 'Ivan Acosta-Rubio'
  u.unit_size_id  '2'
  u.resort_id '1'
  u.created_at '2009-12-12'
  u.updated_at '2009-12-12'
  u.image_file_name 'main3'
  u.image_content_type 'image/jpeg'
  u.image_file_size '9999'
  u.image_updated_at '2009-12-12'
  u.client_id '1'
end