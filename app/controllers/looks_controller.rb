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

    def edit
        @look = Look.find(params[:id])
    end

    def update
        @look = Look.find(params[:id])
        if params[:look][:photos] == [""]
            params[:look].delete(:photos)
        end
        respond_to do |format|
            if @look.update!(look_params)
                format.html { redirect_to looks_path }
            else
                render :edit
            end
        end
    end

    private

    def look_params
        params.require(:look).permit(:description, :category_names, photos: [])
    end


end
