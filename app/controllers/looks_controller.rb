class LooksController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @looks = Look.all
    end

    def new
        @look = Look.new
    end

    def show
        @look = Look.find(params[:id])
    end

    def create
        @look = Look.new(look_params)
        @look.user = current_user
        if @look.save
            redirect_to @look
        else
            render :new
        end
    end

    private

    def look_params
        params.require(:look).permit(:description, photos: [])
    end


end
