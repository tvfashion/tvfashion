class Outfit < ActiveRecord::Base
  attr_accessible :name, :image, :actor_id, :episode_id
  
  belongs_to :actor
  belongs_to :episode
end
