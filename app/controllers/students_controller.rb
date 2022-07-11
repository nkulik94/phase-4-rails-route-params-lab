class StudentsController < ApplicationController

  def index
    if !params[:name]
      students = Student.all
      render json: students
    else
      students = Student.all
      render json: students.filter { |student| student.to_s.upcase.include?(params[:name].upcase) }
    end

  end

  def show
    render json: Student.find(params[:id])
  end
end
