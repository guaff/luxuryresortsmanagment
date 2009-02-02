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

ActiveRecord::Schema.define(:version => 0) do

  create_table "activities", :primary_key => "activityid", :force => true do |t|
    t.string "name",        :limit => 50
    t.text   "description", :limit => 16777215
    t.string "icon"
    t.string "image"
  end

  create_table "activities_resorts", :id => false, :force => true do |t|
    t.integer "activityid", :limit => 10
    t.integer "resortid",   :limit => 10
  end

  create_table "amenities", :primary_key => "amenityid", :force => true do |t|
    t.string "name", :limit => 50
  end

  create_table "amenities_resorts", :id => false, :force => true do |t|
    t.integer "amenityid", :limit => 10
    t.integer "resortid",  :limit => 10
  end

  create_table "cities", :primary_key => "cityid", :force => true do |t|
    t.integer "locationid",  :limit => 10
    t.string  "name",        :limit => 50
    t.text    "description", :limit => 16777215
    t.string  "image"
  end

  create_table "featureresorts_ads", :primary_key => "featureid", :force => true do |t|
    t.string  "image"
    t.string  "link"
    t.integer "locationcode", :limit => 11
    t.integer "offsite",      :limit => 4
  end

  create_table "features", :primary_key => "featureid", :force => true do |t|
    t.string "name", :limit => 50
  end

  create_table "features_units", :id => false, :force => true do |t|
    t.integer "featureid", :limit => 10
    t.integer "unitid",    :limit => 10
  end

#  create_table "locations", :primary_key => "locationid", :force => true do |t|
#    t.string "name",        :limit => 50
#    t.text   "description", :limit => 16777215
#    t.string "image"
#  end

  create_table "resorts", :primary_key => "resortid", :force => true do |t|
    t.string  "name",              :limit => 50
    t.integer "cityid",            :limit => 10
    t.string  "main_image"
    t.string  "second_image"
    t.string  "studio_image"
    t.string  "one_bedroom_image"
    t.string  "two_bedroom_image"
    t.string  "suite_image"
    t.text    "studio_descp",      :limit => 16777215
    t.text    "one_bed_descp",     :limit => 16777215
    t.text    "two_bed_descp",     :limit => 16777215
    t.text    "suite_descp",       :limit => 16777215
    t.text    "description",       :limit => 16777215
    t.string  "WRURL"
    t.integer "show_inventory",    :limit => 4
    t.text    "pleaseread",        :limit => 16777215
  end

  create_table "sister_resorts", :id => false, :force => true do |t|
    t.integer "resortid",        :limit => 10
    t.integer "sister_resortid", :limit => 10
  end

  create_table "unit_sizes", :primary_key => "unitsizeid", :force => true do |t|
    t.string "name", :limit => 50
  end

  create_table "units", :primary_key => "unitid", :force => true do |t|
    t.string  "vw_unitid",   :limit => 100
    t.integer "resortid",    :limit => 10
    t.integer "unitsizeid",  :limit => 10
    t.string  "owner_email"
    t.string  "owner_name",  :limit => 100
    t.integer "forsale",     :limit => 4
    t.string  "salesprice",  :limit => 70
    t.string  "rentprice",   :limit => 70
    t.string  "begin_date",  :limit => 50
    t.string  "end_date",    :limit => 50
  end

end
