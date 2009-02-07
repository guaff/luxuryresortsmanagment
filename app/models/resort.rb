class Resort < ActiveRecord::Base
  belongs_to :city
  has_many :rooms
  
  validates_presence_of :name, :description, :city_id
  
  has_attached_file :photo_main, 
                    :style => { :big => "289×218>",
                                :thumb => "138x106>"}
  
  has_attached_file :photo1, 
                    :style => { :big => "289×218>",
                                :thumb => "138x106>"}

  has_attached_file :photo2, 
                    :style => { :big => "289×218>",
                                :thumb => "138x106>"}
                                
  has_attached_file :photo3, 
                    :style => { :big => "289×218>",
                                :thumb => "138x106>"}
  
  has_attached_file :photo4, 
                    :style => { :big => "289×218>",
                                :thumb => "138x106>"}
                                
end
