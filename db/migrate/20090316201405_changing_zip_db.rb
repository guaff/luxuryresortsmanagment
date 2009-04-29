class ChangingZipDb < ActiveRecord::Migration
  def self.up
    change_column :clients, :zip, :string
    change_column :clients, :billing_zip, :string
  end

  def self.down
    change_column :clients, :zip, :integer
    change_column :clients, :billing_zip, :integer
  end
end
