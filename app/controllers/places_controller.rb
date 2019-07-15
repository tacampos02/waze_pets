class PlacesController < ApplicationController
  def show
    id = params[:id]
    @place = Place.find(id)
  end

  def new
    @place = Place.new
  end

  def edit
    id = params[:id]
    @place = Place.find(id)
  end

  def create
    Place.create(places_params)
    flash[:success] = 'New place was created'
    redirect_to root_path
  end

  def index
    @places = Place.all
  end

  def update
    id = params[:id]
    @place = Place.find(id)
    @place.update(places_params)
    flash[:success] = 'Your place was update'
    redirect_to  '/places'
  end
  private

  def places_params
    params.require(:place).permit(:name, :adress, :owner, :schedule, :kind, :number, :avatar)
  end
end
