class ActorController < ApplicationController
  def index
  end



  	def show
      	@show = Show.find_by_id(params[:show_id])
 	end
 	
    def set_actor
      @actor = Actor.find(params[:id])
    end

end
