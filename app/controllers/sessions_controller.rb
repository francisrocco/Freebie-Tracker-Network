class SessionsController < ApplicationController

  def new
    #binding.pry
    #  if session[:user_id]
    #    #binding.pry
    #    @user = User.find(session[:user_id])
    #    if @user.brands.length > 0
    #      redirect_to brand_path(@user.brands.first)
    #    else redirect_to user_path(User.find(session[:user_id]))
    #    end
    #  end
  end

  def create
    #binding.pry
    user = User.find_by(email: session_params[:email])
      if user && user.authenticate(session_params[:password])
        session[:user_id] = user.id
        #binding.pry
        if user.brands.length > 0
          brand = user.brands.first
          redirect_to brand_path(brand)
        else redirect_to user_path(user)
        end
      else
        redirect_to '/', notice: 'Username or Password Not Correct'
      end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
