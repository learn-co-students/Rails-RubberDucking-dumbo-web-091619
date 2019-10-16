class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
  end

  def create
    if duck_params[:name] == ""
      flash[:alert] = "Name cannot be blank."
      redirect_to new_duck_path
    else 
    @duck = Duck.create(duck_params)
    redirect_to @duck
    end 
  end 

  def show
    @duck =  Duck.find(params[:id])
  end 

  def edit
    @duck = Duck.find(params[:id])
  end

  def update 
   duck = Duck.find(params[:id])
   duck.update(duck_params)
   redirect_to duck
  end 

  private 
  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
