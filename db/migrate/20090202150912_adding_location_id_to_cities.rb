class AddingLocationIdToCities < ActiveRecord::Migration
  def self.up
    add_column :cities, :location_id, :integer
  end

  def self.down
    remove_column :cities, :location_id
  end
end
