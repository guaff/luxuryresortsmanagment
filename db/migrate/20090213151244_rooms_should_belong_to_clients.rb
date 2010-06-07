class RoomsShouldBelongToClients < ActiveRecord::Migration
  def self.up
    add_column :rooms, :client_id, :integer
  end

  def self.down
    remove_column :rooms, :client_id
  end  
end
