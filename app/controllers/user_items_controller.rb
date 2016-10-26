class UserItemsController < ApplicationController

  def destroy
    #binding.pry
    @user = User.find(session[:user_id])
    UserItem.find(params[:id]).destroy
      redirect_to user_path(@user)
  end
end
