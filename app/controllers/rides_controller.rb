require 'pry'
class RidesController < ApplicationController

  def create
    @ride = Ride.new(ride_params)
    message = @ride.take_ride
    if @ride.save
      redirect_to user_path(@ride.user)
      message
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
