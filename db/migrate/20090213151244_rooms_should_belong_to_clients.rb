class RoomsShouldBelongToClients < ActiveRecord::Migration
  def self.up
    add_column :rooms, :client_id, :string
  end

  def self.down
    remove_column :rooms, :client_id
  end
end
