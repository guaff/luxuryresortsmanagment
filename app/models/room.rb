class Room < ActiveRecord::Base
  
  belongs_to :client
  belongs_to :resort
  belongs_to :unit_size
  
  validates_presence_of :price, :unit_size_id, :sale_or_rent, :resort_id, :code, :availability, :client_id
  validates_numericality_of :unit_size_id
  
  #TODO: GENERATE A CODE GENERATOR
  
  
  has_attached_file :image,
                    :url  => "/image/rooms/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/rooms/:id/:style/:basename.:extension",
                    :style => { :thumb => "99x59>" }
    
  validates_attachment_size :image, :less_than => 1.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
