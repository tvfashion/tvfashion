class Episode < ActiveRecord::Base
	attr_accessible :id, :season_number, :number, :name, :overview, :air_date, :guest_stars, :director, :writer, :rating, :rating_count,  :show_id, :image

	belongs_to :show
	has_many :outfits
  	has_many :actors, through: :show
end