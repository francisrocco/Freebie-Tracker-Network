class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def create
    @user = User.find(session[:user_id])
    @brand = @user.brands.first
  #  binding.pry
    @item = Item.new(name: item_params[:name], market_value: item_params[:market_value], gimmick: item_params[:gimmick], item_image: item_params[:item_image], brand_id: @brand.id)
    if @item.save
      redirect_to brand_path(@brand)
    else
      render :new
    end
  end

  def show
  end

  def index
    @items = Item.all
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to brand_path(@brand)
  end

  def destroy
    #binding.pry
    @user = User.find(session[:user_id])
    @brand = @user.brands.first
    Item.find(params[:id]).destroy


      redirect_to brand_path(@brand)

  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :market_value, :gimmick, :item_image, :id)
  end

end
