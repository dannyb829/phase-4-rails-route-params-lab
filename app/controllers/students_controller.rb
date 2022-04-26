class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def by_name
    render json: Student.where("first_name LIKE ?  OR last_name LIKE ? ", "%#{params[:name]}%","%#{params[:name]}%")
  end  

end
