class RegionsController < ApplicationController
  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end

  def new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    render('regions/success.html.erb')
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    render('regions/destroy.html.erb')
  end

end
