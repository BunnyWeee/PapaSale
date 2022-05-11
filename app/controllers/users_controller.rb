class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      redirect_to users_path, notice: "update successfully"
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :gender, :avatar)
  end
end
