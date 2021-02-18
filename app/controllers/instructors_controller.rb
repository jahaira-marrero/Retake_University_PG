class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def new 
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.create(instructor_params)
        redirect_to instructor_path(@instructor)
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy 
        redirect_to instructors_path
    end

    private

    def instructor_params
        params.require(:instructor).permit(:name)
    end

end
