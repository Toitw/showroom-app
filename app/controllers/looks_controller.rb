class LooksController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = current_user
        @looks = Look.all
    end

    def new
        @user = current_user
        @look = @user.looks.new
    end

    def show
        @look = Look.find(params[:id])
    end

    def create
        @user = current_user
        @look = @user.looks.new(look_params)
        @looks = Look.all
        respond_to do |format|
            if @look.save
                format.html { redirect_to looks_path }
                format.turbo_stream
            else
                format.html { render :new }
            end
        end
    end
    

    def destroy
        @look = Look.find(params[:id])
        @look.destroy
        redirect_to looks_path
    end

    private

    def look_params
        params.require(:look).permit(:description, photos: [])
    end


end
