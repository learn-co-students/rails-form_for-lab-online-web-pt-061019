class SchoolClassesController < ApplicationController
	def index
		@schools = SchoolClass.all
	end

	def show
		@school = SchoolClass.find(params[:id])
	end

	def new
		@school = SchoolClass.new
	end

	def create
	  @school = SchoolClass.create(school_class_params)
	  redirect_to school_class_path(@school)
	end

	def update
	  @school = SchoolClass.find(params[:id])
	  @school.update(school_class_params)
	  redirect_to school_class_path(@school)
	end

	def edit
	  @school = SchoolClass.find(params[:id])
    end
    
    private

	def school_class_params
		params.require(:school_class).permit(:title, :room_number)
	end
end
