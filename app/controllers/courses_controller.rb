class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
        # if @course.open_seats(course_params)
        #     redirect_to course_path(@course)
        # else
        #     flash[:errors] = @course.errors.full_messages
        #     redirect_to new_grade_path(@course)
        # end
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

    def enroll
        # @course = Course.find(params[:id])
        # @course.update(seat_limit: @course.seat_limit - 1)
        @course.decrease_number_by(params[:this_number].to_i)
        redirect_to course_path(@course)
    end 


    private

    def course_params
        params.require(:course).permit(:name, :seat_limit, :week_day, :time, :instructor_id)
    end

end
