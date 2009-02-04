class Resort < ActiveRecord::Base
  belongs_to :city
  
  validates_presence_of :name, :description, :city_id
  
  
end
