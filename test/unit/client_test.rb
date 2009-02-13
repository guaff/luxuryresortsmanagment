require File.dirname(__FILE__) + '/../test_helper'

class ClientTest < ActiveSupport::TestCase
  
  should_have_many :rooms
  should_validate_presence_of :full_name, :full_name_second, :address, :city, :state,
                              :zip, :home_phone, :work_phone, :email, :fee_paid, :payment_type, 
                              :charge_date, :credit_card, :credit_card_type, :credit_card_expiration,
                              :billing_name, :billing_address, :billing_city, :billing_state,
                              :billing_zip, :start_date, :contract_return_date, :cancellation_date, 
                              :charge_return_date, :tts_sale_person, :resort_sale_person, :notes, 
                              :client_pin
                              
  should_only_allow_numeric_values_for  :zip, :home_phone, :work_phone, :fee_paid, :credit_card, 
                                        :billing_zip
  

end
