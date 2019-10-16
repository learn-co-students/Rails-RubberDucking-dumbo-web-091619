class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
      @student = Student.create(params_student)
      @duck = Duck.find(params_duck[:duck_ids])
      @duck.update(student_id: @student.id)
      redirect_to students_path
  end

  private
  def params_student
    params.require(:student).permit(:name, :mod)
  end

  def params_duck
    params.require(:student).permit(:duck_ids)
  end

end
