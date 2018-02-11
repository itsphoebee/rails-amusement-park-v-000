class UserController < ApplicationController

  def new
  end

  def create
    
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :height, :tickets, :admin)
  end
end
