class ApparelsController < ApplicationController
  def new
    @hotel = Hotel.find(params[:hotel_id])
    @apparel = Apparel.new
  end

  def create
    @apparel = Apparel.new(apparel_params)
    @hotel = Hotel.find(params[:hotel_id])
    @apparel.hotel = @hotel
    if @apparel.save
      redirect_to hotel_path(@hotel)
    else
      render :new
    end
  end

  def edit
    @apparel = Apparel.find(params[:id])
  end

  def update
    @apparel = Apparel.find(params[:id])
    if @apparel.update(apparel_params)
      redirect_to hotel_path(@apparel.hotel)
    else
      render :edit
    end
  end

  def destroy
    @apparel = Apparel.find(params[:id])
    @apparel.destroy
    redirect_to hotel_path(@apparel.hotel)
  end

  private

  def apparel_params
    params.require(:apparel).permit(:brand, :category, :photo)
  end
end
