class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]
  before_filter :authenticate_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    if session[:user_id]
      if params[:item_id]
        item = Item.find(params[:item_id])
        @user.items << item
      end
    else
      redirect_to root_path
    end

  end

  def index
    @users = User.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def delete
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end

end
