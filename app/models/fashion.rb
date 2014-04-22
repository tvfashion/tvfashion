class Fashion < ActiveRecord::Base
  attr_accessible :match, :image, :ad_url, :outfit_id
  belongs_to :outfit
end
