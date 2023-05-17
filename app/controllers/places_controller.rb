class PlacesController < ApplicationController

  def index
    @places = Place.all 
  end
  
  def show
    @place = Place.find_by({"id" => params["id"] })
    # think I need to put posts below but I'm not sure
    @posts = Post.where({"place_id" => @place["id"] })
  end

  def new
    @place = Place.new
  end
  
  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["place"]["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to"/places"
  end

end
