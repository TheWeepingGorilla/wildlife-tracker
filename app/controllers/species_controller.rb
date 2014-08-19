class SpeciesController < ApplicationController
  def show
    @species = Specie.all
    render('species/show.html.erb')
  end
end
