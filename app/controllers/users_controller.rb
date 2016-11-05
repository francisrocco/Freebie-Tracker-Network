class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: user_params[:name], password: user_params[:password], email: user_params[:email])
    if @user.save
      #binding.pry
        if user_params[:brand_name] != nil && user_params[:brand_prestige] != nil && user_params[:brand_location] != nil
            #binding.pry
            @brand = Brand.create(name: user_params[:brand_name], prestige: user_params[:brand_prestige], location: user_params[:brand_location], business: @user)
            #binding.pry
        end
        session[:user_id] = @user.id
        if @user.brands.length > 0
          redirect_to brand_path(@user.brands.first)
        else redirect_to user_path(@user)
        end
    else
      render :new
    end
  end

  def show

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


  def set_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin, :brand_name, :brand_prestige, :brand_location)
  end

end
