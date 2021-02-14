class RegistrarsController < ApplicationController

    def index
        @registrars = Registrar.all
    end

    def show
        @registrar = Registrar.find(params[:id])
    end

    def new 
        @registrar = Registrar.create
    end

    def create
        @registrar = Registrar.create(registrar_params)
        redirect_to registrar_path(@registrar)
    end

    def update
        @registrar = Registrar.find(params[:id])
        @registrar.update(registrar_params)
    end

    def edit
        @registrar = Registrar.find(params[:id])
    end

    def destroy
        @registrar = Registrar.find(params[:id])
        @registrar.destroy 
        redirect_to registrars_path
    end

    private

    def registrar_params
        params.require(:registrar).permit(:student_id, :course_id)
    end

end
