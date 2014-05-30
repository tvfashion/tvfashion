class Outfit < ActiveRecord::Base
  belongs_to :actor
  belongs_to :episode
  attr_accessor :show
  	mount_uploader :image, OutfitUploader
end
