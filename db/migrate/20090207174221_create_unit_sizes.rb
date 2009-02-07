class CreateUnitSizes < ActiveRecord::Migration
  def self.up
    create_table :unit_sizes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :unit_sizes
  end
end
