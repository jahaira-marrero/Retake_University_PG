class OfficeHoursController < ApplicationController

    def index
        @officehours = OfficeHour.all
    end

    def show
        @officehour = OfficeHour.find(params[:id])
    end

    def new 
        @officehour = OfficeHour.create
    end

    def create
        @officehour = OfficeHour.create(officehour_params)
        redirect_to officehour_path(@officehour)
    end

    def update
        @officehour = OfficeHour.find(params[:id])
        @officehour.update(officehour_params)
    end

    def edit
        @officehour = officehour.find(params[:id])
    end

    def destroy
        @officehour = OfficeHour.find(params[:id])
        @officehour.destroy 
        redirect_to officehours_path
    end

    private

    def officehour_params
        params.require(:officehour).permit(:time, :week_day, :instructor_id)
    end

end
