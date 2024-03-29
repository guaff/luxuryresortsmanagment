class Resort < ActiveRecord::Base
  belongs_to :city
  has_many :rooms
  
  validates_presence_of :name, :description, :city_id
  
  validates_numericality_of :city_id
  
  has_attached_file :photo_main, :whiny_thumbnails => true,
                    :styles => { 
                                :thumb => "276x212>"}
  
  has_attached_file :photo1, :whiny_thumbnails => true,
                    :styles => { 
                                :thumb => "138x106>"}

  has_attached_file :photo2, :whiny_thumbnails => true,
                    :styles => {
                                :thumb => "138x106>"}
                                
  has_attached_file :photo3, :whiny_thumbnails => true,
                    :styles => {
                                :thumb => "138x106>"}
  
  has_attached_file :photo4, :whiny_thumbnails => true,
                    :styles => { 
                                :thumb => "138x106>"}
  
  validates_attachment_presence :photo_main
  validates_attachment_size :photo_main, :less_than => 1.megabytes
  validates_attachment_content_type :photo_main, :content_type => ['image/jpeg', 'image/png']
  
  validates_attachment_presence :photo1
  validates_attachment_size :photo1, :less_than => 1.megabytes
  validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/png']
  
  validates_attachment_presence :photo2
  validates_attachment_size :photo2, :less_than => 1.megabytes
  validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/png']
  
  validates_attachment_presence :photo3
  validates_attachment_size :photo3, :less_than => 1.megabytes
  validates_attachment_content_type :photo3, :content_type => ['image/jpeg', 'image/png']
  
  validates_attachment_presence :photo4
  validates_attachment_size :photo4, :less_than => 1.megabytes
  validates_attachment_content_type :photo4, :content_type => ['image/jpeg', 'image/png']
                                
end
