class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    @search = params["search"]
    if @search.present?
      @query = @search["name"]
      @hotels = Hotel.where("name ILIKE ?", "%#{@query}%")
    end
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotel_path(@hotel)
    else
      render :new
    end
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address, :photo)
  end

end

