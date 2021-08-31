class UsersController < ApplicationController
  def show
    @user = User.find_by(pseudo: params[:pseudo])
    if current_user == @user
      redirect_to dashboard_path
    end
  end

end
