class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def create
    # if student_params[:name] && student_params[:mod].to_i.between?(1,5)
      @student = Student.create(student_params)
      redirect_to @student
    # else
    #   puts "Please submit a valid name and mod number"
    # end
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
