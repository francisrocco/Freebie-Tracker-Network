class BrandsController < ApplicationController

  def show
    @brand = Brand.find(params[:id])
  end

  def index
    @brands = Brand.all
  end

end
