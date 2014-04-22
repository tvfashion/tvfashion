class Show < ActiveRecord::Base
	attr_accessible :name, :overview, :first_aired, :genres, :network, :rating, :runtime, :air_time, :imdb_id, :episodes_count, :actors_count, :seasons_count, :status, :airs_dayofweek, :rating_count
end