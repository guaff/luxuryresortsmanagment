class City < ActiveRecord::Base
  belongs_to :location
  has_many :resorts
  
  has_attached_file :image,
                    :url  => "/image/cities/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/cities/:id/:style/:basename.:extension"
    
  validates_presence_of :description, :name
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 1.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
end
