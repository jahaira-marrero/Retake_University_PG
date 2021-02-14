class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @students = Student.find(params[:id])
    end

    def new 
        @student = Student.create
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy 
        redirect_to students_path
    end

    private

    def student_params
        params.require(:student).permit(:name, :age, :major)
    end

end
