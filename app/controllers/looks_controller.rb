class LooksController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = current_user
        @looks = Look.all
    end

    def new
        @look = Look.new
    end

    def show
        @look = Look.find(params[:id])
    end

    def create
        @user = current_user
        @look = @user.looks.new(look_params)
        respond_to do |format|
            if @look.save
                format.turbo_stream
                format.html { redirect_to looks_path }
            else
                @looks = Look.all
                format.html { render :index, status: :unprocessable_entity }
                format.turbo_stream { render :new, status: :unprocessable_entity } 
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
