class SessionsController < ApplicationController

  def new
    redirect_to user_path(User.find(session[:user_id])) if session[:user_id]
  end

  def create
    user = User.find_by(name: params[:user][:name])
    # binding.pry
      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        redirect_to '/', notice: 'Username or Password Not Correct'
      end
  end

  def destroy
    session[:user_id] = nil
    #or reset_session
    redirect_to '/'
  end

end
