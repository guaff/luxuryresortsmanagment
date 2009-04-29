class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :code
      t.string :availability
      t.string :sale_or_rent
      t.integer :price
      t.string :owner_name
      t.integer :unit_size_id
      t.integer :resort_id
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
