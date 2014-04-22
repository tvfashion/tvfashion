class Episode < ActiveRecord::Base
	attr_accessible :season_number, :number, :name, :overview, :air_date, :guest_stars, :director, :writer, :rating, :rating_count,  :show_id

	belongs_to :show
end