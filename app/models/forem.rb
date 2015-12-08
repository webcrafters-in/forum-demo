class Forem < ActiveRecord::Base  
  attr_accessible :title, :text, :image
  mount_uploader :image, ImageUploader
  has_many :comments, :dependent => :destroy
  belongs_to :user
end
