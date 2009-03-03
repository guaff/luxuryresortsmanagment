class InrementingCcSize < ActiveRecord::Migration
  def self.up
    change_column :clients, :credit_card, :string, :limit  => 20
  end

  def self.down
  end
end
