class EpisodeController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  def index
  	@episodes = Episode.all
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Episode.find(params[:id])
    end

end
