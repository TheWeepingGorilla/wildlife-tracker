class SpeciesController < ApplicationController
  def show
    @species = Specie.all
    render('species/show.html.erb')
  end

  def new
    render('species/new.html.erb')
  end

  def create
    @new_specie = Specie.create(params[:specie])
    render('species/success.html.erb')
  end
end
