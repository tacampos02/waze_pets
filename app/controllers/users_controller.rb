class UsersController < ApplicationController
  # before_action :authenticate_user!
  def new
    @user = User.new
  end

  def edit
    id = params[:id]
    @user = User.find(id)
  end

  def create
    User.create(users_params)
    flash[:success] = 'New user was created'
    redirect_to root_path
  end

  def index
    @users = User.all
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end
end
