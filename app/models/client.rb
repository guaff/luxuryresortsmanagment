class Client < ActiveRecord::Base

  has_many :rooms
  has_many :comments
  
  validates_presence_of :full_name, :full_name_second, :address, :city, :state, :zip, :home_phone, 
                        :work_phone, :email, :fee_paid, :payment_type, :charge_date, :credit_card, 
                        :credit_card_type, :credit_card_expiration, :billing_name, :billing_address,
                        :billing_city, :billing_state, :billing_zip, :start_date, :contract_return_date,
                        :cancellation_date, :charge_return_date, :tts_sale_person, :resort_sale_person,
                        :notes, :client_pin
                        
  validates_numericality_of  :home_phone, :work_phone, :fee_paid, :fee_paid
  
  def self.search(search)
    if search
      find(:all, :conditions => ['full_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  
end
