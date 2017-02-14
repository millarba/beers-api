class Api::V1::BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def create
    @beer = Beer.create(
                        name: params[:name],
                        style: params[:style],
                        ibu: params[:ibu],
                        alcohol: params[:alcohol])
    render :show
  end

  def update
    @beer = Beer.find(params[:id])

    @beer.update(
                  name: params[:name],
                  style: params[:style],
                  ibu: params[:ibu],
                  alcohol: params[:alcohol]
                  )

    render :show
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy

  end

end
