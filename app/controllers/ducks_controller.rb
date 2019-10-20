class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
      @duck = Duck.find(params[:id])
  end

  def update
      @duck = Duck.find(params[:id])
      @duck.update(paras_d)
  end


  private
  def paras_d
      params.require(:duck).permit(:name, :description)
  end

end
