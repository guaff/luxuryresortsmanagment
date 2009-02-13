# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090213151244) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size",    :limit => 11
    t.datetime "image_updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "full_name"
    t.string   "full_name_second"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip",                    :limit => 11
    t.integer  "home_phone",             :limit => 11
    t.integer  "work_phone",             :limit => 11
    t.string   "email"
    t.integer  "fee_paid",               :limit => 11
    t.string   "payment_type"
    t.date     "charge_date"
    t.integer  "credit_card",            :limit => 11
    t.string   "credit_card_type"
    t.string   "credit_card_expiration"
    t.string   "billing_name"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_state"
    t.integer  "billing_zip",            :limit => 11
    t.date     "start_date"
    t.date     "contract_return_date"
    t.date     "cancellation_date"
    t.date     "charge_return_date"
    t.string   "tts_sale_person"
    t.string   "resort_sale_person"
    t.text     "notes"
    t.string   "client_pin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size",    :limit => 11
    t.datetime "image_updated_at"
  end

  create_table "mailinglists", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resorts", :force => true do |t|
    t.string   "name"
    t.integer  "city_id",                 :limit => 11
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_main_file_name"
    t.string   "photo_main_content_type"
    t.integer  "photo_main_file_size",    :limit => 11
    t.datetime "photo_main_updated_at"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size",        :limit => 11
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size",        :limit => 11
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size",        :limit => 11
    t.datetime "photo3_updated_at"
    t.string   "photo4_file_name"
    t.string   "photo4_content_type"
    t.integer  "photo4_file_size",        :limit => 11
    t.datetime "photo4_updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "code"
    t.string   "availability"
    t.string   "sale_or_rent"
    t.integer  "price",              :limit => 11
    t.string   "owner_name"
    t.integer  "unit_size_id",       :limit => 11
    t.integer  "resort_id",          :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size",    :limit => 11
    t.datetime "image_updated_at"
    t.string   "client_id"
  end

  create_table "unit_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
