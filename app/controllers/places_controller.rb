class PlacesController < ApplicationController

  def index
    if @current_user
    @places = Place.all
    else 
      redirect_to "/sessions/new"
    end
  end

  def show
    if @current_user
    @place = Place.find(params["id"])
   # @post = Post.find(params["id"])
    # @post.user_id = @current_user.id 
  end
end

  def new
    @place = Place.new
  end

  def create
    if @current_user
    @place = Place.new(params["place"])
    @place.save
    end
    redirect_to "/places"
    end
  
end
