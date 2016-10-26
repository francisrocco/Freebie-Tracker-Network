class SessionsController < ApplicationController

  def new
     if session[:user_id]
       @user = User.find(session[:user_id])
       if @user.brands.length > 0
         redirect_to brand_path(@user.brands.first)
       else redirect_to user_path(User.find(session[:user_id]))
       end
     end
  end

  def create
    user = User.find_by(email: session_params[:email])
    #binding.pry
    brand = user.brands.first
      if user && user.authenticate(session_params[:password])
        session[:user_id] = user.id
        #binding.pry
        if user.brands.length > 0
          redirect_to brand_path(brand)
        else redirect_to user_path(user)
        end
      else
        redirect_to '/', notice: 'Username or Password Not Correct'
      end
  end

  def destroy
    session[:user_id] = nil
    #or reset_session
    redirect_to '/'
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
