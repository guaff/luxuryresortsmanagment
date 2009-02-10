class Location < ActiveRecord::Base
  has_many :cities
  
  has_attached_file :image,
                    :url  => "/image/locations/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/locations/:id/:style/:basename.:extension"
    
  validates_presence_of :description, :name
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 1.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
end
