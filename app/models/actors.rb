class Actors < ActiveRecord::Base
	attr_accessible :name, :roles_id , :image, :show_id, :sort_order

	# example validation
	validates :name, presence: true, length: { minimum: 2 }
end