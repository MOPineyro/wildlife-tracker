class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      redirect_to '/sightings'
    else
      redirect_to '/sightings'
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    @sighting.update(params[:sighting])
    redirect_to '/sightings'
  end

  def delete
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to '/sightings'
  end
end
