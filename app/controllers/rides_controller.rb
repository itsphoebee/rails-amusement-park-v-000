class RidesController < ApplicationController

  def create
    @ride = Ride.new(ride_params)
    @ride.take_ride
    if @message == true
 +        flash[:notice] = "Thanks for riding the #{@attraction.name}!"
 +      else
 +        flash[:notice] = @message
 +      end
    redirect_to user_path(@ride.user)
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
