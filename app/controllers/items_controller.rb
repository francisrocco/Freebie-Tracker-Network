class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  #  binding.pry
    if @item.save
      redirect_to item_path(@item)
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
    redirect_to item_path(@item)
  end

  def destroy
    #binding.pry
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :market_value, :brand_id, :image)
  end

end
