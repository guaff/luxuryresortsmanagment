class ChangingUnitSizeIdtoUnitSizesId < ActiveRecord::Migration
  def self.up
    rename_column :rooms, :unit_size_id, :unit_sizes_id
  end

  def self.down
    rename_column :rooms, :unit_sizes_id, :unit_size_id
  end
end
