class Tree < ActiveRecord::Base
  attr_accessible :desc, :title, :img
  has_many :users
  mount_uploader :img, ImageUploader
end
