class Comment < ActiveRecord::Base
  belongs_to :client
  validates_presence_of :comment, :author
end