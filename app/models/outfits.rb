class Outfits < ActiveRecord::Base
  attr_accessible :name, :image, :actor_id, :episode_id, :show_id

  belongs_to :actor
  belongs_to :episode
  belongs_to :show
  # belongs_to :season

  mount_uploader :image, ImageUploader
end