class PostsController < ApplicationController

  def show
    #likely going to need to change this
    @post = Post.all
    @place = Place.find_by({"id" => params["id"]})
    # render contacts/show view with details about Contact
  end

  def new
    @post = Post.new
    @post["place_id"] = params["id"]
  end

  def create
    # start with a new Post
    @post = Post.new
    

    # assign user-entered form data to Post's columns
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]

    # assign relationship between Post and Place
    @post["place_id"] = params["post"]["place_id"]

    # save Post row
    @post.save

    # redirect user
    # not sure about this one
    redirect_to"/places/#{@post["place_id"]}"
  end
end
