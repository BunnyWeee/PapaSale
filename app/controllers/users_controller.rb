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
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "新增 user 成功!"
    else
      render :new
    end
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
