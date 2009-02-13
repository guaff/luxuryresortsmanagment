class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :full_name
      t.string :full_name_second
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :home_phone
      t.integer :work_phone
      t.string :email
      t.integer :fee_paid
      t.string :payment_type
      t.date :charge_date
      t.integer :credit_card
      t.string :credit_card_type
      t.string :credit_card_expiration
      t.string :billing_name
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.integer :billing_zip
      t.date :start_date
      t.date :contract_return_date
      t.date :cancellation_date
      t.date :charge_return_date
      t.string :tts_sale_person
      t.string :resort_sale_person
      t.text :notes
      t.string :client_pin

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
