class DeleteImageOnLocations < ActiveRecord::Migration
  def self.up
    remove_column :locations, :image
  end

  def self.down
    add_column :locations, :image, :string
  end
end
