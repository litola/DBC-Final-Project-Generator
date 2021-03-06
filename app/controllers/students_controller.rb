class StudentsController < ApplicationController
  def index
    @cohort = current_student.cohort
    @student = Student.find(current_student.id)
    @current_pitches = current_student.cohort.pitches
    @student_pitches = current_student.pitches
  end

  def show
    @student = Student.find(params[:id])
  end
end
