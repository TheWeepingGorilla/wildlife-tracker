class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.create(params[:sighting])
    render('sightings/success.html.erb')
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sighting])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end
end

