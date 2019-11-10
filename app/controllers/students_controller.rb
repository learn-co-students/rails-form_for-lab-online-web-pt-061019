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
	  @student = Student.new(student_params(:first_name, :last_name))
	  @student.save
	  redirect_to student_path(@student)
	end

	def update
	  @student = student.find(params[:id])
	  @student.update(student_params(:title))
	  redirect_to student_path(@student)
	end

	private

	def student_params(*args)
		params.require(:student).permit(*args)
	end

	def edit
	  @student = student.find(params[:id])
	end
end
