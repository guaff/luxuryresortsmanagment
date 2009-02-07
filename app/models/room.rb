class Room < ActiveRecord::Base
  belongs_to :resort
  
  has_attached_file :image,
                    :url  => "/image/rooms/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/rooms/:id/:style/:basename.:extension"
    
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 1.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
