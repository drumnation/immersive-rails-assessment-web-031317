class AppearancesController < ApplicationController
  include ApplicationHelper

  before_action :require_login

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @appearance = Appearance.new
  	@guests = Guest.order(:name)
  	@episodes = Episode.order(:date)
  end

  def create
    appearance = Appearance.new(appearance_params)
    if appearance.valid?
      appearance.save
      redirect_to appearance_path(appearance)
    else
      redirect_to new_appearance_path
    end
  end

  private

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  def appearance_params
  	return params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
