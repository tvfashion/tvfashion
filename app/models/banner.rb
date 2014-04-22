class Banner < ActiveRecord::Base
  attr_accessible :banner_type, :banner_type2, :season, :image, :language, :show_id

  belongs_to :show
end
