class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
