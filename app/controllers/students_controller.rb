class StudentsController < ApplicationController

    def new
        
    end

    def create
        student = Student.new
        pp params
        student.first_name = params[:student][:first_name]
        student.last_name = params[:student][:last_name]
        student.save
    
        redirect_to student_path(student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.first_name = params[:student][:first_name]
        student.last_name = params[:student][:last_name]
        student.save

        redirect_to student_path(student)

    end


end
