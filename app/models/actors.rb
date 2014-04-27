class Actors < ActiveRecord::Base
	attr_accessible :id, :name, :roles_id , :image, :show_id, :sort_order

  	belongs_to :show
  	has_many :outfits

	# example validation
	validates :name, presence: true, length: { minimum: 2 }
end