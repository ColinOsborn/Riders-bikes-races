class RidersController < ApplicationController
  def index
  end

  def new
    @rider = Rider.new
  end

  def create
    @rider = Rider.create(rider_params)
    redirect_to @rider
  end

  def show
    @rider = Rider.find(params[:id])
  end

private

  def rider_params
    params.require(:rider).permit(:name, :image_path)
  end
end
