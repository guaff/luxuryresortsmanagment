class City < ActiveRecord::Base
  belongs_to :location
  has_many :resorts
  validates_uniqueness_of :name
  validates_numericality_of :location_id
  validates_length_of :name, :in => 3..10
  
  has_attached_file :image,
                    :url  => "/image/cities/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/cities/:id/:style/:basename.:extension"
    
  validates_presence_of :description, :name, :location_id
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 1.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
end
