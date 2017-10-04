class LandingsController < ApplicationController
  # Rendr the Index page
  def index
  	@earlyBird = Subscribe.new
  	@count = Subscribe.all.count
  end

  def show

  end

  def new
  end

  # Create a new Early Bird record
  def getNotified
  	@earlyBird = Subscribe.new(subscribe_params)
 	if @earlyBird.save
 		redirect_to root_path, notice: "Yippee! Welcome to the Party. Check your email for more."
 	else
 		redirect_to root_path
 	end
  end 

  private 

  def subscribe_params
  	params.require(:subscribe).permit(:name,:email, :phone)
  end


end
