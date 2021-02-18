class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new 
        @course = Course.create
    end

    def create
        @course = Course.create(course_params)
        redirect_to course_path(@course)
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def edit
        @course = Course.find(params[:id])
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy 
        redirect_to courses_path
    end

    


    private

    def course_params
        params.require(:course).permit(:name, :seat_limit, :week_day, :time, :instructor_id)
    end

end
