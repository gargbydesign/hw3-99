class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    render :template => "places/new"
  end

  def show
    @place = Place.find_by(params["id"])
    @entries = Entry.where("place_id" => @place["id"])
  end

  def create
    place = Place.new
    place["name"] = params["name"]
    place.save
    redirect_to "/places"
  end

end
