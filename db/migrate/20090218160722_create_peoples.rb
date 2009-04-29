class CreatePeoples < ActiveRecord::Migration
  def self.up
    create_table :peoples do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :where

      t.timestamps
    end
  end

  def self.down
    drop_table :peoples
  end
end
