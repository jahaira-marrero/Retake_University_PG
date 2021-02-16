class GradesController < ApplicationController
    def index
        @grades = Grade.all
    end

    def show
        @grade = Grade.find(params[:id])
    end

    def new 
        @grade = Grade.create
        @students = Student.all
        @courses = Course.all 
    end

    def create
        @grade = Grade.create(grade_params)
        redirect_to student_path(@grade.student_id)
     
    end

    def update
        @grade = Grade.find(params[:id])
        if @grade.update(grade_params)
            redirect_to grade_path(@grade)
        else
            flash[:errors] = @grade.errors.full_messages
            redirect_to edit_grade_path(@grade)
        end
    end

    def edit
        @grade = Grade.find(params[:id])
        @student = Student.all
        @course = Course.all
    end

    def destroy
        @grade = Grade.find(params[:id])
        @grade.destroy 
        redirect_to grades_path
    end

    private

    def grade_params
        params.require(:grade).permit(:grade_value, :student_id, :course_id)
    end

end

