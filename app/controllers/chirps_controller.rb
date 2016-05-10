class ChirpsController < ApplicationController

  def new
    @chirp = Chirp.new
    @chirps = Chirp.all
  end 

  def create
    @chirp = Chirp.new chirp_params
    @chirp.user = current_user
    @chirp.save!
    @chirps = Chirp.all
    render :index
  end 

  def index
    @chirp = Chirp.new
    @chirps = Chirp.all
  end 

  def my_chirps
    @chirps = Chirp.where(:user_id => current_user)
  end 

  private

  def chirp_params
    params.require(:chirp).permit(:title, :description, :user_id)
  end

end 