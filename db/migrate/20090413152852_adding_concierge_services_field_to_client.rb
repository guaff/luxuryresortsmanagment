class AddingConciergeServicesFieldToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :concierge_accepted, :boolean, :default => 0
    add_column :clients, :concierge_renewal, :date, :default => Date.today
  end

  def self.down
    remove_column :clients, :concierge_accepted
    remove_column :clients, :concierge_renewal
  end
end
