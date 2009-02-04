class AddAttachmentsPhotoMainPhoto1Photo2Photo3AndPhoto4ToResort < ActiveRecord::Migration
  def self.up
    add_column :resorts, :photo_main_file_name, :string
    add_column :resorts, :photo_main_content_type, :string
    add_column :resorts, :photo_main_file_size, :integer
    add_column :resorts, :photo_main_updated_at, :datetime
    add_column :resorts, :photo1_file_name, :string
    add_column :resorts, :photo1_content_type, :string
    add_column :resorts, :photo1_file_size, :integer
    add_column :resorts, :photo1_updated_at, :datetime
    add_column :resorts, :photo2_file_name, :string
    add_column :resorts, :photo2_content_type, :string
    add_column :resorts, :photo2_file_size, :integer
    add_column :resorts, :photo2_updated_at, :datetime
    add_column :resorts, :photo3_file_name, :string
    add_column :resorts, :photo3_content_type, :string
    add_column :resorts, :photo3_file_size, :integer
    add_column :resorts, :photo3_updated_at, :datetime
    add_column :resorts, :photo4_file_name, :string
    add_column :resorts, :photo4_content_type, :string
    add_column :resorts, :photo4_file_size, :integer
    add_column :resorts, :photo4_updated_at, :datetime
  end

  def self.down
    remove_column :resorts, :photo_main_file_name
    remove_column :resorts, :photo_main_content_type
    remove_column :resorts, :photo_main_file_size
    remove_column :resorts, :photo_main_updated_at
    remove_column :resorts, :photo1_file_name
    remove_column :resorts, :photo1_content_type
    remove_column :resorts, :photo1_file_size
    remove_column :resorts, :photo1_updated_at
    remove_column :resorts, :photo2_file_name
    remove_column :resorts, :photo2_content_type
    remove_column :resorts, :photo2_file_size
    remove_column :resorts, :photo2_updated_at
    remove_column :resorts, :photo3_file_name
    remove_column :resorts, :photo3_content_type
    remove_column :resorts, :photo3_file_size
    remove_column :resorts, :photo3_updated_at
    remove_column :resorts, :photo4_file_name
    remove_column :resorts, :photo4_content_type
    remove_column :resorts, :photo4_file_size
    remove_column :resorts, :photo4_updated_at
  end
end
