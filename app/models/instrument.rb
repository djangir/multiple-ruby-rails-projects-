class Instrument < ApplicationRecord 
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :cart_items
end
