class UsersController < ApplicationController
  before_action :set_user, only: [:me, :update, :destroy]
  before_action :authenticate_user!

  def index
  
  end

  def me
    render json: User.first
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
