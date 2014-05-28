class OutfitsController < ApplicationController

    before_action :set_outfit, only: [:show, :edit, :update, :destroy]


  def new
  	@outfit = Outfits.new
  end

  def edit
  end

  def delete
  end

    def create
    @outfit = Outfits.new(outfit_params)
   
    respond_to do |format|
      if @outfit.save
        format.html { redirect_to @outfit, notice: 'Outfit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outfit }
      else
        format.html { render action: 'new' }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
  end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_outfit
      @outfit = Outfits.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outfit_params
      params.require(:outfit).permit(:episode_id, :actor_id, :name, :image)
    end
    
end
