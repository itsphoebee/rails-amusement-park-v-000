class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
  end

  def show
    @attraction = Attraction.find_by(id:params[:id])
  end

  def edit
    @attraction = Attraction.find_by(id:params[:id])
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end
end
