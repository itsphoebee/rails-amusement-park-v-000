require 'pry'
class RidesController < ApplicationController

  def new
    @ride = Ride.new(ride_params)
    message = @ride.take_ride
    @ride.save
    flash[:notice] = message
    redirect_to user_path(@ride.user)
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
