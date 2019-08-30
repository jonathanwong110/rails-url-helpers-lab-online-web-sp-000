class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    @student = Student.find(params[:id])
    
    if @student.active
      "This student is currently active"
      @student.save
    else
      "This student is currently inactive"
    end
    
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end