class SessionsController < ApplicationController
  def create
    
  end

  def me
    render json: current_user
  end

  def update

  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
