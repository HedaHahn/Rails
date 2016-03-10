class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisements = Advertisement.find(params[:id])
  end

  def new
    @advertisements = Advertisement.new
  end

  def create
    @advertisements = Advertisement.new
    @advertisements.title = params[:advertisement][:title]
    @advertisements.copy = params[:advertisement][:copy]
    @advertisements.price = params[:advertisement][:price]

    if @advertisement.save
      flash[:notice] = "Advertisement was saved."
      redirect_to @advertisements
    else
      flash[:error] = "There was an error saving the advetisement. Please try again."
      render :new
  end
 end
end
