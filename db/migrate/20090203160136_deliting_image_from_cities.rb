class DelitingImageFromCities < ActiveRecord::Migration
  def self.up
    remove_column :cities, :image
  end

  def self.down
    add_column :cities, :image, :string
  end
end
