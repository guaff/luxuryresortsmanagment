class CommentsOnClients < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
        t.column :client_id, :string
        t.column :comment, :string
        t.column :author, :string
    end
  end

  def self.down
    drop_table :comments
  end
end
