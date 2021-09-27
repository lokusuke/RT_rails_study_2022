class UsersController < ApplicationController
   before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tweet = @user.tweets
  end
end
