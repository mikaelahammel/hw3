class PlacesController < ApplicationController

  def index
    @places = Place.all 
  end
  
  def show
    @place = Place.find_by({"id" => params["id"] })
    #this is going to need to be changed
    @posts = Post.all
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
