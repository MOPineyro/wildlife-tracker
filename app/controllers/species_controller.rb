class SpeciesController < ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    @current_species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def create
    Species.create(params[:species])
    redirect_to '/'
  end

  def edit
    @current_species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @current_species = Species.find(params[:id])
    @current_species.update(params[:species])
    redirect_to '/'
  end

  def delete
    @current_species = Species.find(params[:id])
    @current_species.destroy
    redirect_to '/'
  end
end
