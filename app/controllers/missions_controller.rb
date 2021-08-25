class MissionsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:query] && params[:query] != ""
      @missions = Mission.search_by_address(params[:query])
    else
      @missions = Mission.all
    end
    @markers = @missions.geocoded.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        info_window: render_to_string(partial: "info_windows", locals: { mission: mission })
      }
    end
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    if @mission.save
      redirect_to missions_path
    else
      render :new
    end
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @missions = Mission.find(params[:id])
    @mission.update(mission_params)
    redirect_to mission_path(@mission)
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy

    redirect_to dashboard_path(current_user)
  end

  private

  def mission_params
    params.require(:mission).permit(:description, :started_at, :finished_at, :user_id)
  end
end
