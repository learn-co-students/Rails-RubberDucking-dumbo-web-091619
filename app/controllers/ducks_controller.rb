class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end
  
  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.create(duck_params(:name, :description))
    redirect_to duck_path(@duck)
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(duck_params(:name, :description))
    redirect_to duck_path(@duck)
  end

  private

  def duck_params(*args)
    params.require(:duck).permit(*args)
  end

end
