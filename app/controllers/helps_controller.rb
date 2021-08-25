class HelpsController < ApplicationController
  before_action :set_mission, only: [:index, :show, :new, :create]
  def index
    @helps = Help.where(user_id: current_user)
  end

  def new
    @help = Help.new
  end

  def create
    puts "COUCOU"
    @help = Help.new
    @help.mission = @mission
    @help.user = current_user
    if @help.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @help = Help.find(params[:id])
    @help.destroy
    redirect_to dashboard_path
  end

private 

  def help_params
    params.require(:help).permit(:user_id, :mission_id)
  end

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end
end
