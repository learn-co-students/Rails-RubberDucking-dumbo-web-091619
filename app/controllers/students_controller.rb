class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new 
  end

  def create
    if student_params[:name] == "" 
      flash[:alert] = "Error must have a name!"
      redirect_to new_student_path

    else
      @student = Student.create(student_params)
      redirect_to @student
    end
  end 

  def show
    @student = Student.find(params[:id])
  end 

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student
  end 

  private 
  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
