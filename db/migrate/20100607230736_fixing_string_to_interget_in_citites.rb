class FixingStringToIntergetInCitites < ActiveRecord::Migration
  def self.up
    change_column :cities, :location_id, :integer
  end

  def self.down
    change_column :cities, :location_id, :string
  end
end
