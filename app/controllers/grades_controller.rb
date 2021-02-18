class GradesController < ApplicationController
    def index
        @grades = Grade.all
    end

    def show
        @grade = Grade.find(params[:id])
    end

    def new 
        @grade = Grade.new
        @students = Student.all
        @courses = Course.all 
    end

    def create
        course = Course.find(params[:grade][:course_id])
        if course.open_seats > 0 && course.open_seats < 11 
            @grade = Grade.create(grade_params)
            redirect_to student_path(@grade.student_id)
        else
            flash[:errors] = ["Course is full.", "Choose another course."]
            redirect_to new_grade_path
        end
    end

    def update
        @grade = Grade.find(params[:id])
        @grade.update(grade_params)
        redirect_to student_path(@grade.student_id)
    end

    def edit
        @grade = Grade.find(params[:id])
        @student = Student.all
        @course = Course.all
    end

    def destroy
        @grade = Grade.find(params[:id])
        @grade.destroy 
        redirect_to student_path
    end

    private

    def grade_params
        params.require(:grade).permit(:grade_value, :student_id, :course_id)
    end

end

