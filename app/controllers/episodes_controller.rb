class EpisodesController < ApplicationController

  before_action :logged_in

  def index
    @episodes = Episode.all
  end
end
