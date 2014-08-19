class SpeciesController < ApplicationController
  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def show
    @specie = Specie.find(params[:id])
    render('species/show.html.erb')
  end

  def new
    render('species/new.html.erb')
  end

  def create
    @specie = Specie.create(params[:specie])
    render('species/success.html.erb')
  end

  def destroy
    @specie = Specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
  end

end
