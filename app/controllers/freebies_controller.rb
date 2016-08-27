class FreebiesController < ApplicationController
  before_action :set_freebie, only: [:show, :edit, :update, :delete]

  def new
    @freebie = Freebie.new
  end

  def create
    @freebie = Freebie.new(freebie_params)
    if @freebie.save
      redirect_to freebie_path(@freebie)
    else
      render :new
    end
  end

  def show
  end

  def index
    @freebies = Freebie.all
  end

  def edit
  end

  def update
    @freebie.update(freebie_params)
    redirect_to freebie_path(@freebie)
  end

  def delete
  end

  private

  def set_freebie
    @freebie = Freebie.find(params[:id])
  end

  def freebie_params
    params.require(:freebie).permit(:name, :market_value)
  end

end
