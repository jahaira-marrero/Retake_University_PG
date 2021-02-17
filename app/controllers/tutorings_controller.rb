class TutoringsController < ApplicationController

    def show
        @tutoring = Tutoring.find(params[:id])
    end

end
