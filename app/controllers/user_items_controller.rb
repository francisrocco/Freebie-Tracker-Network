class UserItemsController < ApplicationController

  def create
    #binding.pry
    user_item = UserItem.new(user_id: current_user.id, item_id: params[:item_id])
    if user_item.save
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    #binding.pry
    @user = User.find(session[:user_id])
    UserItem.find(params[:id]).destroy
      redirect_to user_path(@user)
  end


end
