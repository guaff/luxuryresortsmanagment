class CreateResorts < ActiveRecord::Migration
  def self.up
    create_table :resorts do |t|
      t.string :name
      t.integer :city_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :resorts
  end
end
