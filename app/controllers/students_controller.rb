class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  private

  def activate
  @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
  end

    def set_student
      @student = Student.find(params[:id])
    end
end